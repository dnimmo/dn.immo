module View.EmploymentHistory exposing (..)

import Animations exposing (SlideState, darkenContent, slideInOutFromRight)
import Animator
import Colours
import Components exposing (channelHeading, closeButton, date, edges, post, threadLink)
import Content.EmploymentHistory as EmploymentHistory exposing (EmploymentHistory)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Json.Decode exposing (maybe)
import Viewport exposing (Viewport(..))


slug =
    "employment-history"


type alias Thread =
    { title : String
    , contents : List String
    }


type State
    = DisplayingThread Viewport Thread
    | NotDisplayingThread Viewport (Maybe Thread)


employmentPost : (Thread -> msg) -> Bool -> EmploymentHistory -> Element msg
employmentPost openThreadMsg displayThreadLink item =
    column
        [ width fill
        , height fill
        ]
        [ date item.date
        , post item.post "Nimmo" <|
            if displayThreadLink then
                Just <|
                    threadLink <|
                        openThreadMsg
                            { title =
                                Maybe.withDefault "" <|
                                    List.head
                                        item.post
                            , contents = item.threadContent
                            }

            else
                Just <| el [ height <| px 37 ] <| none
        ]


thread : msg -> Viewport -> Animator.Timeline SlideState -> Thread -> Element msg
thread closeMsg viewport slideState { title, contents } =
    column
        [ slideInOutFromRight slideState <|
            toFloat <|
                case viewport of
                    Narrow { width } ->
                        width

                    Medium { width } ->
                        width
        , height fill
        , Background.color Colours.white
        , alignRight
        , Border.widthEach { edges | left = 1 }
        , Border.color Colours.mediumGrey
        , scrollbarY
        , case viewport of
            Narrow _ ->
                width fill

            Medium details ->
                width (fill |> maximum (details.width - 400))
        ]
        [ row [ width fill ]
            [ channelHeading
                { name = "Employment history"
                , description = title
                }
            , el
                [ Border.widthEach { edges | bottom = 1 }
                , Border.color Colours.mediumGrey
                , height fill
                , width <| px 60
                ]
              <|
                closeButton closeMsg
            ]
        , post contents "Nimmo" Nothing
        ]


view :
    State
    -> Animator.Timeline SlideState
    ->
        { openThreadMsg :
            Thread
            -> msg
        , closeThreadMsg : msg
        }
    -> Element msg
view state slideState { openThreadMsg, closeThreadMsg } =
    column
        [ height fill
        , width fill
        , darkenContent slideState
        , inFront <|
            case state of
                NotDisplayingThread viewport maybeContent ->
                    thread closeThreadMsg viewport slideState <|
                        Maybe.withDefault
                            { title = ""
                            , contents = []
                            }
                            maybeContent

                DisplayingThread viewport content ->
                    thread closeThreadMsg viewport slideState content
        ]
    <|
        List.concat
            [ [ channelHeading
                    { name = "Employment History"
                    , description = "Information about my employment history. Details in threads."
                    }
              ]
            , List.map
                (employmentPost openThreadMsg <|
                    case state of
                        NotDisplayingThread _ _ ->
                            True

                        DisplayingThread _ _ ->
                            False
                )
                EmploymentHistory.content
            ]
