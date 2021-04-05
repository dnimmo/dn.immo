module Animations exposing (..)

import Animator
import Animator.Inline
import Color
import Element exposing (Attribute, htmlAttribute)
import Element.Background as Background


type SlideState
    = -- TODO: Add Open and Closing states
      Closed
    | Opening


slideInOutFromRight : Animator.Timeline SlideState -> Float -> Attribute msg
slideInOutFromRight animated viewportWidth =
    htmlAttribute <|
        Animator.Inline.xy animated <|
            \slideState ->
                case slideState of
                    Opening ->
                        { x = Animator.at 0
                        , y = Animator.at 0
                        }

                    Closed ->
                        -- TODO Prevent menu from being able to be tabbed into whilst closed
                        { x = Animator.at viewportWidth
                        , y = Animator.at 0
                        }


darkenContent : Animator.Timeline SlideState -> Attribute msg
darkenContent animated =
    Background.color <|
        Element.fromRgb <|
            Color.toRgba <|
                Animator.color
                    animated
                <|
                    \slideState ->
                        case slideState of
                            Opening ->
                                Color.grey

                            Closed ->
                                Color.white
