port module Ports.Viewport exposing (..)

import Viewport exposing (ViewportDetails)


port viewportSizeChanged :
    (ViewportDetails
     -> msg
    )
    -> Sub msg
