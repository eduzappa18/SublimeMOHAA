import re
import json
import webbrowser

import sublime
import sublime_plugin
import mdpopups

SCOPES = [
    "support.function.builtin.scr",
    "keyword.control.flow.scr",
    "keyword.control.loop.scr",
    "keyword.control.scr"
]

VERSION = {
    "AA": "Medal of Honor: Allied Assault",
    "SH": "Medal of Honor: Allied Assault - Spearhead",
    "BT": "Medal of Honor: Allied Assault - Breakthrough",
    "REBORN": "MoH:AA 1.12 Reborn Patch"
}

class MOHAATooltips(sublime_plugin.EventListener):

    def on_selection_modified(self, view):
        if not Pref.show_tooltips:
            return

        if Pref.isActive:
            return

        if not any(x in view.scope_name(view.sel()[0].a) for x in SCOPES):
            return

        command = Pref.data.get(view.substr(view.word(view.sel()[0])).lower())
        if not command:
            return

        Pref.isActive = True

        global copy, menus

        menus = ["<body id='mohtooltip'>"]
        menus.append("<style>{}</style>".format(Pref.css))

        menus.append("<div class='header'>")
        if command["class"]:
            menus.append("<div class='class-container'>")
            menus.append("<span>Class:</span>")
            for i, cl in enumerate(command["class"]):
                if i: menus.append(",")
                menus.append("<span class='class'> {}</span>".format(cl))
            menus.append("</div>")

        if command["gamever"]:
            menus.append("<div class='version-container'>")
            menus.append(" [")
            for i, ver in enumerate(command["gamever"]):
                if i:
                    menus.append(", ")
                menus.append("<span class='version {0}' title='{1}'>{0}</span>".format(ver, VERSION[ver]))
            menus.append("]</div>")
        menus.append("</div>")

        menus.append("<div class='content'>")
        if command["syntax"]:
            name, *args = re.split("(\\W)", command["syntax"], maxsplit=1)
            menus.append("<div class='syntax-container'>")
            menus.append("<strong class='name'>{}</strong>".format(name))
            if args:
                menus.append("<var>{}</var>".format("".join(args).replace("\n", "<br>")))
            menus.append("</div>")

        if command["description"]:
            menus.append("<div class='description-container'>{}</div>".format(command["description"].replace("\n", "<br>")))
        menus.append("</div>")

        if command["example"]:
            lang = mdpopups.get_language_from_view(view) or ""
            example = mdpopups.syntax_highlight(view, command["example"], language=lang)
            menus.append("<div class='example-container'>")
            menus.append("Example:")
            menus.append("<code class='example-code'>{}</code>".format(example))
            menus.append("<a class='example-copy' href='tooltip.copy'>copy</a>")
            menus.append("</div>")
            copy = command["example"]

        menus.append("<div class='footer'>")
        menus.append("<a href='https://x-null.net/wiki' title='MoH:AA Reborn Wiki'>Wiki</a>".format(name))
        menus.append("<a href='https://www.x-null.net/forums/forum.php' title='xNULL | MoH:AA 1.12 Reborn Forums'>xNULL</a>")
        menus.append("<a href='http://mohreborn.com' title='mohreborn.com'>MoHReborn</a>")
        menus.append("</div>")
        menus.append("</body>")

        max_width, max_height = view.viewport_extent()
        max_width *= 0.90
        max_height *= 0.90
        a = view.word(view.sel()[0]).begin()
        b = view.word(view.sel()[0]).end()

        self.view = view

        view.show_popup(
            "".join(menus),
            sublime.HIDE_ON_MOUSE_MOVE_AWAY,
            location=b,
            max_width=max_width,
            max_height=max_height,
            on_navigate=self.on_navigate,
            on_hide=self.on_hide
        )

        view.add_regions(
            "moh_tooltip",
            [sublime.Region(a, b)],
            "invalid",
            "",
            sublime.HIDE_ON_MINIMAP | sublime.DRAW_NO_FILL
        )

    def on_navigate(self, link):
        if link == "tooltip.copy":
            sublime.set_clipboard(copy)
            self.view.update_popup("".join(menus).replace(">copy</a>", ">copied✔</a>"))
        else:
            webbrowser.open_new_tab(link)

    def on_hide(self):
        self.view.erase_regions("moh_tooltip")
        Pref.isActive = False

def lang_map_settings():
    # load the settings to transfer
    res = sublime.load_resource("Packages/MOHAA/tooltips/lang_map.sublime-settings")
    lang_map = sublime.decode_value(res).get("mdpopups.sublime_user_lang_map", {})

    # load user settings
    user_settings = sublime.load_settings("Preferences.sublime-settings")
    user_lang_map = user_settings.get("mdpopups.sublime_user_lang_map", {})

    if user_lang_map.get("Morpheus") == lang_map.get("Morpheus"):
        return

    # transfer the settings to the user settings
    user_lang_map.update(lang_map)
    user_settings.set("mdpopups.sublime_user_lang_map", user_lang_map)

    # save the user settings
    sublime.save_settings("Preferences.sublime-settings")

def plugin_loaded():
    global Pref

    class Pref:
        def load(self):
            Pref.isActive = False
            Pref.show_tooltips = settings.get("show_tooltips", True)

    Pref = Pref()
    settings = sublime.load_settings("MOHAA.sublime-settings")
    morpheus = json.loads(sublime.load_resource("Packages/MOHAA/tooltips/db/Morpheus.json"))
    reborn = json.loads(sublime.load_resource("Packages/MOHAA/tooltips/db/Reborn.json"))
    morpheus.update(reborn)
    Pref.data = morpheus
    Pref.css = sublime.load_resource("Packages/MOHAA/tooltips/style.css").replace("\r", "")

    Pref.load()
    lang_map_settings()
    settings.add_on_change("reload", lambda:Pref.load())
