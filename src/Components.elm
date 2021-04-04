module Components exposing (..)

import Colours
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Element.Region as Region exposing (description)
import Icons


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
        , height <| px 10
        , width <| px 10
        , Background.color Colours.green
        , alignTop
        ]
        none


navigationItem : Bool -> String -> Element msg
navigationItem active slug =
    link
        [ Font.size 15
        , width fill
        , paddingEach
            { edges
                | left = 42
                , top = 8
                , bottom = 6
            }
        , Background.color <|
            if active then
                Colours.lightBlue

            else
                Colours.darkBlue
        , Font.color <|
            if active then
                Colours.white

            else
                Colours.menuWhite
        , mouseOver <|
            if active then
                []

            else
                [ Background.color Colours.navy
                , Font.color Colours.lightGrey
                ]
        ]
        { url = "/" ++ slug
        , label =
            row
                [ width fill
                , if active then
                    Font.bold

                  else
                    Font.medium
                , spacing 4
                , centerY
                ]
                [ text "#"
                , text slug
                ]
        }


navigation : Bool -> String -> List String -> Element msg
navigation expanded activeItem slugs =
    column
        [ paddingXY 0 20
        , width fill
        ]
        [ row
            [ height fill
            , spacing 5
            , paddingEach { edges | left = 20 }
            ]
            [ el [ moveUp 2 ] <|
                if expanded then
                    Icons.arrowDown

                else
                    Icons.arrowRight
            , el
                [ Region.heading 2
                , Font.size 18
                ]
              <|
                text "Channels"
            ]
        , column
            [ width fill
            , paddingEach { edges | top = 8 }
            ]
          <|
            List.map (\str -> navigationItem (str == activeItem) str) slugs
        ]


menu : Bool -> String -> List String -> Element msg
menu channelListExpanded activeItem channels =
    column
        [ height fill
        , width <| px 256
        , Background.color Colours.darkBlue
        , Font.color Colours.menuWhite
        ]
        [ siteHeading
        , navigation channelListExpanded activeItem channels
        ]


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
                        ++ (String.toLower << String.replace " " "-") name
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
        , height <| px 13
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


avatar : Int -> String -> Element msg
avatar size src =
    el
        [ Border.rounded 20
        , Background.image <|
            "/img/"
                ++ src
        , width <| px size
        , height <| px size
        , alignTop
        ]
        none


nimmoAvatarStandard =
    avatar 37 "nimmo.png"


nimmoAvatarSmall =
    avatar 20 "nimmo.png"


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
                , bottom = 30
            }
        , Font.size 16
        ]
        [ nimmoAvatarStandard
        , column
            [ width fill
            , height fill
            , spacing 32
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
    newTabLink [ Font.color Colours.linkBlue ]
        { label =
            row [ spacing 10 ]
                [ paragraph [ Font.underline ] [ text label ]
                , el [ width <| px 20 ] Icons.externalLink
                ]
        , url = url
        }


threadLink : msg -> Element msg
threadLink msg =
    Input.button [ centerY ]
        { label =
            row
                [ width fill
                , height <| px 37
                , spacing 10
                , paddingEach { edges | top = 16 }
                ]
                [ nimmoAvatarSmall
                , el
                    [ Font.color Colours.linkBlue
                    , Font.bold
                    , Font.size 14
                    ]
                  <|
                    text "Read more"
                ]
        , onPress = Just msg
        }


closeButton : msg -> Element msg
closeButton msg =
    Input.button
        [ width fill
        , height fill
        ]
        { label = el [ centerX, centerY ] <| Icons.close
        , onPress = Just msg
        }
