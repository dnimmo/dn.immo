module Components exposing (..)

import Colours
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Region as Region exposing (description)


setHeight int =
    height (fill |> maximum int)


setWidth int =
    width (fill |> maximum int)


globalStyles =
    [ width fill
    , height fill
    , Font.family
        [ Font.typeface "Hind"
        , Font.sansSerif
        ]
    , Font.light
    ]


statusIndicator =
    el
        [ Border.rounded 50
        , setHeight 10
        , setWidth 10
        , Background.color Colours.green
        , alignBottom
        ]
        none


menu =
    column
        [ height fill
        , setWidth 256
        , Background.color Colours.darkBlue
        , Font.color Colours.menuWhite
        ]
        [ siteHeading ]


edges =
    { top = 0
    , left = 0
    , right = 0
    , bottom = 0
    }


siteHeading : Element msg
siteHeading =
    column
        [ width fill
        , spacing 8
        , Border.color Colours.mediumBlue
        , Border.widthEach { edges | bottom = 1 }
        , padding 20
        ]
        [ paragraph
            [ Region.heading 1
            , Font.size 16
            , Font.color Colours.white
            ]
            [ el [] <| text "DavidNimmoCV"
            ]
        , row
            [ width fill
            , spacing 4
            ]
            [ statusIndicator
            , el [ Font.size 12 ] <| text "Nimmo"
            ]
        ]


mainLayout =
    row
        [ width fill
        , height fill
        ]


channelHeading { name, description } =
    column
        [ width fill
        , paddingEach
            { edges
                | top = 20
                , left = 20
                , right = 20
                , bottom = 19
            }
        , spacing 10
        , Font.size 14
        , Border.widthEach { edges | bottom = 1 }
        , Border.color Colours.lightGrey
        ]
        [ row [ spacing 6 ]
            [ el [ Font.medium ] <|
                text name
            , el [ Font.color Colours.grey ] <|
                text <|
                    "(# "
                        ++ String.toLower name
                        ++ ")"
            ]
        , el [ Font.color Colours.grey ] <|
            text description
        ]


date str =
    el
        [ width fill
        , Border.widthEach { edges | bottom = 1 }
        , Border.color Colours.lightGrey
        , setHeight 13
        , paddingXY 0 20
        , inFront <|
            el
                [ centerX
                , alignBottom
                , moveDown 13
                , Border.rounded 20
                , Border.color Colours.lightGrey
                , Border.width 1
                , paddingXY 40 5
                , Font.size 13
                , Background.color Colours.white
                ]
            <|
                text str
        ]
    <|
        none


avatar : String -> Element msg
avatar src =
    el
        [ Border.rounded 20
        , Background.image <|
            "/img/"
                ++ src
        , setWidth 37
        , setHeight 37
        ]
        none


nimmoAvatar =
    avatar "nimmo.png"


post : List String -> Maybe (Element msg) -> Element msg
post content maybeFinalElement =
    row
        [ width fill
        , spacing 20
        , paddingEach
            { edges
                | top = 20
                , left = 20
                , right = 20
                , bottom = 0
            }
        , Font.size 16
        , height fill
        ]
        [ nimmoAvatar
        , column
            [ width fill
            , height fill
            , spacing 18
            ]
          <|
            [ el [ Font.medium ] <| text "Nimmo"
            ]
                ++ List.map (\str -> paragraph [ spacing 10 ] [ text str ]) content
                ++ (case maybeFinalElement of
                        Just element ->
                            [ element ]

                        Nothing ->
                            [ none ]
                   )
        ]


externalLink { label, url } =
    link [ Font.color Colours.linkBlue ]
        { label = paragraph [ Font.underline ] [ text label ]
        , url = url
        }
