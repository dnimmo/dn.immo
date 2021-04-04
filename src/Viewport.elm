module Viewport exposing (..)


type alias ViewportDetails =
    { height : Int
    , width : Int
    }


type Viewport
    = Narrow ViewportDetails
    | Medium ViewportDetails


classify : ViewportDetails -> Viewport
classify details =
    if details.width < 700 then
        Narrow details

    else
        Medium details
