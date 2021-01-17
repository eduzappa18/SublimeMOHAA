// SYNTAX TEST "Packages/MOHAA/syntaxes/mohaa.st.sublime-syntax"

    // comment
//  ^^^^^^^^^^^ comment.line.double-slash.st
//  ^^ punctuation.definition.comment.st

    state STATE_NAME
//  ^^^^^^^^^^^ meta.state.declaration.st
//  ^^^^^ storage.type.st
//        ^^^^^ entity.name.function.st

{
// <- meta.state.body.st punctuation.definition.block.begin.st

    movetype legs
//  ^^^^^^^^^^^^^ meta.state.body.st
//  ^^^^^^^^ support.function.st
//           ^^^^ string.unquoted.st

    camera behind
//  ^^^^^^^^^^^^^^ meta.state.body.st
//  ^^^^^^ support.function.st
//         ^^^^^^ string.unquoted.st

    entrycommands
//  ^^^^^^^^^^^^^ meta.state.body.st keyword.other.st

    {
//  ^ meta.state.body.st punctuation.section.block.begin.st

        viewmodelanim pullout
//      ^^^^^^^^^^^^^^^^^^^^^ meta.state.body.st source.scr.embedded.st source.scr

    }
//  ^ meta.state.body.st punctuation.section.block.end.st
    
    action    // valid for "action", "legs" and "torso"
//  ^^^^^^ meta.state.body.st keyword.other.st

    {
//  ^ meta.state.body.st meta.block.st punctuation.section.block.begin.st

        smg_pain_ducked    : POSITION_TYPE "crouching"
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.state.body.st meta.block.st
//      ^^^^^^^^^^^^^^^ string.unquoted.st
//                         ^ punctuation.separator.st
//                           ^^^^^^^^^^^^^ constant.language.st
//                                         ^^^^^^^^^^^ string.quoted.st


        none : default// no torso animation
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.state.body.st meta.block.st
//      ^^^^ constant.language.nil.st
//           ^ punctuation.separator.st
//             ^^^^^^^ keyword.operator.st
//                    ^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.st

    }
//  ^ meta.state.body.st meta.block.st punctuation.section.block.end.st

    states
//  ^^^^^^ meta.state.body.st keyword.other.st

    {
//  ^ meta.state.body.st meta.block.st punctuation.section.block.begin.st

        KILLED : KILLED
//      ^^^^^^^^^^^^^^^^ meta.state.body.st meta.block.st
//      ^^^^^^ variable.function.st
//             ^ punctuation.separator.st
//               ^^^^^^ constant.language.st

        CHECK_PRIMARY_ATTACK_SEMIAUTO   : +ATTACK_PRIMARY IS_WEAPON_SEMIAUTO "mainhand" IS_WEAPON_READY_TO_FIRE "mainhand"
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.state.body.st meta.block.st
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.function.st
//                                      ^ punctuation.separator.st
//                                        ^ keyword.operator.st
//                                         ^^^^^^^^^^^^^^ constant.language.st
//                                                        ^^^^^^^^^^^^^^^^^^ constant.language.st
//                                                                           ^^^^^^^^^^ string.quoted.st
//                                                                                      ^^^^^^^^^^^^^^^^^^^^^^^ constant.language.st
//                                                                                                              ^^^^^^^^^^ string.quoted.st

    }
//  ^ meta.state.body.st meta.block.st punctuation.section.block.end.st

}
// <- meta.state.body.st punctuation.definition.block.end.st