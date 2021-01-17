// SYNTAX TEST "Packages/MOHAA/syntaxes/mohaa.shader.sublime-syntax"

    /*
//  ^^ comment.block.shader punctuation.definition.comment.begin.shader
    comment
//  ^^^^^^^ comment.block.shader
    */
//  ^^ comment.block.shader punctuation.definition.comment.end.shader

    // comment
//  ^^^^^^^^^^ comment.line.double-slash.shader
//  ^^ punctuation.definition.comment.shader

    textures/hud/axis
//  ^^^^^^^^^^^^^^^^^ entity.name.shader

    {
//  ^ meta.block.shader punctuation.section.block.begin.shader

        cull
//      ^^^^ meta.block.shader
//      ^^^^ keyword.other.shader
        deform
//      ^^^^^^ keyword.other.shader
        deformVertexes move 0 2 2 sin -3 1 0 .1
//      ^^^^^^^^^^^^^^ keyword.other.shader
//                     ^^^^ constant.language.shader
//                          ^ constant.numeric.shader
//                            ^ constant.numeric.shader
//                              ^ constant.numeric.shader
//                                ^^^ constant.language.shader
//                                    ^^ constant.numeric.shader
//                                       ^ constant.numeric.shader
//                                         ^ constant.numeric.shader
//                                           ^^ constant.numeric.shader
        fogParms
//      ^^^^^^^^ keyword.other.shader
        force32bit
//      ^^^^^^^^^^ keyword.other.shader
        nodraw
//      ^^^^^^ keyword.other.shader
        noMerge
//      ^^^^^^^ keyword.other.shader
        noMipMaps
//      ^^^^^^^^^ keyword.other.shader
        noPicMip
//      ^^^^^^^^ keyword.other.shader
        polygonOffset
//      ^^^^^^^^^^^^^ keyword.other.shader
        portal
//      ^^^^^^ keyword.other.shader
        portalsky
//      ^^^^^^^^^ keyword.other.shader
        q3map_backshader
//      ^^^^^^^^^^^^^^^^ keyword.other.shader
        q3map_globaltexture
//      ^^^^^^^^^^^^^^^^^^^ keyword.other.shader
        q3map_lightimage
//      ^^^^^^^^^^^^^^^^ keyword.other.shader
        q3map_lightsubdivide
//      ^^^^^^^^^^^^^^^^^^^^ keyword.other.shader
        q3map_nolightmap
//      ^^^^^^^^^^^^^^^^ keyword.other.shader
        q3map_sun
//      ^^^^^^^^^ keyword.other.shader
        q3map_surfacelight
//      ^^^^^^^^^^^^^^^^^^ keyword.other.shader
        qer_alphaFunc
//      ^^^^^^^^^^^^^ keyword.other.shader
        qer_editorImage textures/hud/axis.tga
//      ^^^^^^^^^^^^^^^ keyword.other.shader
//                      ^^^^^^^^^^^^^^^^^^^^^ meta.file-path.shader string.unquoted.shader
        qer_keyword keyword
//      ^^^^^^^^^^^ keyword.other.shader
//                  ^^^^^^^ string.unquoted.shader
        qer_noCarve
//      ^^^^^^^^^^^ keyword.other.shader
        qer_trans
//      ^^^^^^^^^ keyword.other.shader
        skyParms env/dday3 512 -
//      ^^^^^^^^ keyword.other.shader
//               ^^^^^^^^^ meta.file-path.shader string.unquoted.shader
//                         ^^^ constant.numeric.shader
//                             ^ keyword.control.shader

        sort additive
//      ^^^^ keyword.other.shader
//           ^^^^^^^^ constant.language.shader
        sort banner
//      ^^^^ keyword.other.shader
//           ^^^^^^ constant.language.shader
        sort decal
//      ^^^^ keyword.other.shader
//           ^^^^^ constant.language.shader
        sort nearest
//      ^^^^ keyword.other.shader
//           ^^^^^^^ constant.language.shader
        sort opaque
//      ^^^^ keyword.other.shader
//           ^^^^^^ constant.language.shader
        sort portal
//      ^^^^ keyword.other.shader
//           ^^^^^^ constant.language.shader
        sort seethrough
//      ^^^^ keyword.other.shader
//           ^^^^^^^^^^ constant.language.shader
        sort sky
//      ^^^^ keyword.other.shader
//           ^^^ constant.language.shader
        sort underwater
//      ^^^^ keyword.other.shader
//           ^^^^^^^^^^ constant.language.shader
        spriteGen
//      ^^^^^^^^^ keyword.other.shader
        spritescale
//      ^^^^^^^^^^^ keyword.other.shader
        subdivisions
//      ^^^^^^^^^^^^ keyword.other.shader
        surfaceColor
//      ^^^^^^^^^^^^ keyword.other.shader
        surfacelight
//      ^^^^^^^^^^^^ keyword.other.shader
        tessSize
//      ^^^^^^^^ keyword.other.shader

        not_a_keyword
//      ^^^^^^^^^^^^^ meta.block.shader
//      ^^^^^^^^^^^^^ - keyword


        surfaceparm alphashadow
//      ^^^^^^^^^^^ keyword.other.shader
//                  ^^^^^^^^^^^ constant.language.shader
        surfaceparm antiportal
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm areaportal
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm backside
//                  ^^^^^^^^ constant.language.shader
        surfaceparm botclip
//                  ^^^^^^^ constant.language.shader
        surfaceparm carpet
//                  ^^^^^^ constant.language.shader
        surfaceparm castshadow
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm clusterportal
//                  ^^^^^^^^^^^^^ constant.language.shader
        surfaceparm detail
//                  ^^^^^^ constant.language.shader
        surfaceparm dirt
//                  ^^^^ constant.language.shader
        surfaceparm donotenter
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm dust
//                  ^^^^ constant.language.shader
        surfaceparm fence
//                  ^^^^^ constant.language.shader
        surfaceparm flesh
//                  ^^^^^ constant.language.shader
        surfaceparm fog
//                  ^^^ constant.language.shader
        surfaceparm foliage
//                  ^^^^^^^ constant.language.shader
        surfaceparm glass
//                  ^^^^^ constant.language.shader
        surfaceparm grass
//                  ^^^^^ constant.language.shader
        surfaceparm gravel
//                  ^^^^^^ constant.language.shader
        surfaceparm grill
//                  ^^^^^ constant.language.shader
        surfaceparm hint
//                  ^^^^ constant.language.shader
        surfaceparm ladder
//                  ^^^^^^ constant.language.shader
        surfaceparm lava
//                  ^^^^ constant.language.shader
        surfaceparm lightfilter
//                  ^^^^^^^^^^^ constant.language.shader
        surfaceparm lightgrid
//                  ^^^^^^^^^ constant.language.shader
        surfaceparm metal
//                  ^^^^^ constant.language.shader
        surfaceparm metalsteps
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm monsterclip
//                  ^^^^^^^^^^^ constant.language.shader
        surfaceparm mud
//                  ^^^ constant.language.shader
        surfaceparm nodamage
//                  ^^^^^^^^ constant.language.shader
        surfaceparm nodlight
//                  ^^^^^^^^ constant.language.shader
        surfaceparm nodraw
//                  ^^^^^^ constant.language.shader
        surfaceparm noimpact
//                  ^^^^^^^^ constant.language.shader
        surfaceparm nolightmap
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm nomarks
//                  ^^^^^^^ constant.language.shader
        surfaceparm nonsolid
//                  ^^^^^^^^ constant.language.shader
        surfaceparm nosteps
//                  ^^^^^^^ constant.language.shader
        surfaceparm origin
//                  ^^^^^^ constant.language.shader
        surfaceparm paper
//                  ^^^^^ constant.language.shader
        surfaceparm plaster
//                  ^^^^^^^ constant.language.shader
        surfaceparm playerclip
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm pointlight
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm puddle
//                  ^^^^^^ constant.language.shader
        surfaceparm rock
//                  ^^^^ constant.language.shader
        surfaceparm sand
//                  ^^^^ constant.language.shader
        surfaceparm skip
//                  ^^^^ constant.language.shader
        surfaceparm sky
//                  ^^^ constant.language.shader
        surfaceparm slick
//                  ^^^^^ constant.language.shader
        surfaceparm slime
//                  ^^^^^ constant.language.shader
        surfaceparm snow
//                  ^^^^ constant.language.shader
        surfaceparm stone
//                  ^^^^^ constant.language.shader
        surfaceparm structural
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm trans
//                  ^^^^^ constant.language.shader
        surfaceparm translucent
//                  ^^^^^^^^^^^ constant.language.shader
        surfaceparm vehicleclip
//                  ^^^^^^^^^^^ constant.language.shader
        surfaceparm water
//                  ^^^^^ constant.language.shader
        surfaceparm weaponclip
//                  ^^^^^^^^^^ constant.language.shader
        surfaceparm wood
//                  ^^^^ constant.language.shader
        surfaceparm solid
//                  ^^^^^ constant.language.shader
        surfaceparm shootonly
//                  ^^^^^^^^^ constant.language.shader
        surfaceparm invalid
//                  ^^^^^^^ invalid.illegal.shader

    {
//  ^ meta.block.shader meta.block.shader punctuation.section.block.begin.shader

    #if
//  ^^^ keyword.control.conditional.shader
//  ^ punctuation.definition.keyword

    #else
//  ^^^^^ keyword.control.conditional.shader
//  ^ punctuation.definition.keyword

    #endif
//  ^^^^^^ keyword.control.conditional.shader
//  ^ punctuation.definition.keyword

    nextbundle
//  ^^^^^^^^^^ keyword.control.shader

        alphaFunc
//      ^^^^^^^^^ support.function.shader
        alphaGen
//      ^^^^^^^^ support.function.shader
        animmap
//      ^^^^^^^ support.function.shader
        animMapPhase
//      ^^^^^^^^^^^^ support.function.shader
        blendFunc
//      ^^^^^^^^^ support.function.shader
        clampMap
//      ^^^^^^^^ support.function.shader
        clampmapy
//      ^^^^^^^^^ support.function.shader
        depthFunc
//      ^^^^^^^^^ support.function.shader
        depthMask
//      ^^^^^^^^^ support.function.shader
        depthWrite
//      ^^^^^^^^^^ support.function.shader
        detail
//      ^^^^^^ support.function.shader
        map
//      ^^^ support.function.shader
        noDepthTest
//      ^^^^^^^^^^^ support.function.shader
        rgbGen
//      ^^^^^^ support.function.shader
        tcGen
//      ^^^^^ support.function.shader
        tcMod
//      ^^^^^ support.function.shader

        0
//      ^ constant.numeric.shader
        123
//      ^^^ constant.numeric.shader
        .123
//      ^^^^ constant.numeric.shader
        123.123
//      ^^^^^^^ constant.numeric.shader

        rgbGen const (.95 .94 1)
//      ^^^^^^ support.function.shader
//             ^^^^^ constant.language.shader
//                   ^^^^^^^^^^^ meta.group.shader
//                   ^ meta.group.shader punctuation.section.group.begin.shader
//                    ^^^ meta.group.shader constant.numeric.shader
//                        ^^^ meta.group.shader constant.numeric.shader
//                            ^ meta.group.shader constant.numeric.shader
//                             ^ meta.group.shader punctuation.section.group.end.shader

        map textures/hud/axis.tga
//      ^^^ support.function.shader
//          ^^^^^^^^^^^^^^^^^^^^^ meta.file-path.shader string.unquoted.shader

        map *white
//      ^^^ support.function.shader
//          ^ keyword.other.shader
//           ^^^^^ constant.language.shader

        map $bumpmap textures/hud/axis.tga
//      ^^^ support.function.shader
//          ^ keyword.other.shader
//           ^^^^^^^ constant.language.shader
//                   ^^^^^^^^^^^^^^^^^^^^^ meta.file-path.shader string.unquoted.shader

        map $lightmap
//      ^^^ support.function.shader
//          ^ keyword.other.shader
//           ^^^^^^^^ constant.language.shader

        map $whiteimage
//      ^^^ support.function.shader
//          ^ keyword.other.shader
//           ^^^^^^^^^^ constant.language.shader

        textures/hud/axis.tga
//      ^^^^^^^^^^^^^^^^^^^^^ meta.file-path.shader string.unquoted.shader

    // Blend Functions

        add
//      ^^^ constant.language.shader
        filter
//      ^^^^^^ constant.language.shader
        blend
//      ^^^^^ constant.language.shader
        alphaadd
//      ^^^^^^^^ constant.language.shader
        GL_DST_COLOR
//      ^^^^^^^^^^^^ constant.language.shader
        GL_ONE
//      ^^^^^^ constant.language.shader
        GL_ONE_MINUS_DST_COLOR
//      ^^^^^^^^^^^^^^^^^^^^^^ constant.language.shader
        GL_ONE_MINUS_SRC_ALPHA
//      ^^^^^^^^^^^^^^^^^^^^^^ constant.language.shader
        GL_ONE_MINUS_SRC_COLOR
//      ^^^^^^^^^^^^^^^^^^^^^^ constant.language.shader
        GL_SRC_ALPHA
//      ^^^^^^^^^^^^ constant.language.shader
        GL_SRC_COLOR
//      ^^^^^^^^^^^^ constant.language.shader
        GL_ZERO
//      ^^^^^^^ constant.language.shader

    // alphaFunc

        GT0
//      ^^^ constant.language.shader
        LT128
//      ^^^^^ constant.language.shader
        GE128
//      ^^^^^ constant.language.shader

    // depthFunc

        always
//      ^^^^^^ constant.language.shader
        equal
//      ^^^^^ constant.language.shader
        lequal
//      ^^^^^^ constant.language.shader

    // cull

        back
//      ^^^^ constant.language.shader
        disable
//      ^^^^^^^ constant.language.shader
        front
//      ^^^^^ constant.language.shader
        none
//      ^^^^ constant.language.shader
        twosided
//      ^^^^^^^^ constant.language.shader

    // deform

        noiseanim
//      ^^^^^^^^^ constant.language.shader

    // spritegen

        oriented
//      ^^^^^^^^ constant.language.shader
        parallel
//      ^^^^^^^^ constant.language.shader
        parallel_oriented
//      ^^^^^^^^^^^^^^^^^ constant.language.shader
        parallel_upright
//      ^^^^^^^^^^^^^^^^ constant.language.shader

    // (rgb|alpha)Gen

        colorwave
//      ^^^^^^^^^ constant.language.shader
        const
//      ^^^^^ constant.language.shader
        constant
//      ^^^^^^^^ constant.language.shader
        distFade
//      ^^^^^^^^ constant.language.shader
        dot
//      ^^^ constant.language.shader
        entity
//      ^^^^^^ constant.language.shader
        exactVertex
//      ^^^^^^^^^^^ constant.language.shader
        fromClient
//      ^^^^^^^^^^ constant.language.shader
        fromentity
//      ^^^^^^^^^^ constant.language.shader
        fromVertex
//      ^^^^^^^^^^ constant.language.shader
        global
//      ^^^^^^ constant.language.shader
        identity
//      ^^^^^^^^ constant.language.shader
        identityLighting
//      ^^^^^^^^^^^^^^^^ constant.language.shader
        lightingDiffuse
//      ^^^^^^^^^^^^^^^ constant.language.shader
        lightingGrid
//      ^^^^^^^^^^^^ constant.language.shader
        lightingSpecular
//      ^^^^^^^^^^^^^^^^ constant.language.shader
        lightingSpherical
//      ^^^^^^^^^^^^^^^^^ constant.language.shader
        oneMinusDot
//      ^^^^^^^^^^^ constant.language.shader
        oneMinusEntity
//      ^^^^^^^^^^^^^^ constant.language.shader
        oneMinusSkyAlpha
//      ^^^^^^^^^^^^^^^^ constant.language.shader
        oneMinusVertex
//      ^^^^^^^^^^^^^^ constant.language.shader
        sCoord
//      ^^^^^^ constant.language.shader
        skyAlpha
//      ^^^^^^^^ constant.language.shader
        static
//      ^^^^^^ constant.language.shader
        tCoord
//      ^^^^^^ constant.language.shader
        vertex
//      ^^^^^^ constant.language.shader
        wave
//      ^^^^ constant.language.shader

    // tcGen

        base
//      ^^^^ constant.language.shader
        environment
//      ^^^^^^^^^^^ constant.language.shader
        environmentmodel
//      ^^^^^^^^^^^^^^^^ constant.language.shader
        lightmap
//      ^^^^^^^^ constant.language.shader
        vector
//      ^^^^^^ constant.language.shader

    // tcMod

        offset
//      ^^^^^^ constant.language.shader
        parallax
//      ^^^^^^^^ constant.language.shader
        rotate
//      ^^^^^^ constant.language.shader
        scale
//      ^^^^^ constant.language.shader
        scroll
//      ^^^^^^ constant.language.shader
        stretch
//      ^^^^^^^ constant.language.shader
        trans
//      ^^^^^ constant.language.shader
        transform
//      ^^^^^^^^^ constant.language.shader
        turb
//      ^^^^ constant.language.shader
        wavetrant
//      ^^^^^^^^^ constant.language.shader


    // DeformVertexes 1

        autosprite
//      ^^^^^^^^^^ constant.language.shader
        autosprite2
//      ^^^^^^^^^^^ constant.language.shader
        bulge
//      ^^^^^ constant.language.shader
        flap
//      ^^^^ constant.language.shader
        lightglow
//      ^^^^^^^^^ constant.language.shader
        move
//      ^^^^ constant.language.shader
        normal
//      ^^^^^^ constant.language.shader
        projectionShadow
//      ^^^^^^^^^^^^^^^^ constant.language.shader
        wave
//      ^^^^ constant.language.shader

    // DeformVertexes 2

        inversesawtooth
//      ^^^^^^^^^^^^^^^ constant.language.shader
        s
//      ^ constant.language.shader
        sawtooth
//      ^^^^^^^^ constant.language.shader
        sin
//      ^^^ constant.language.shader
        square
//      ^^^^^^ constant.language.shader
        t
//      ^ constant.language.shader
        triangle
//      ^^^^^^^^ constant.language.shader

    // skyParms
        half
//      ^^^^ constant.language.shader
        full
//      ^^^^ constant.language.shader

    }
//  ^ meta.block.shader meta.block.shader punctuation.section.block.end.shader

    }
//  ^ meta.block.shader punctuation.section.block.end.shader