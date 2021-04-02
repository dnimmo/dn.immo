module Icons exposing (..)

import Element exposing (el, html, rotate)
import Material.Icons exposing (chevron_right)
import Material.Icons.Types exposing (Coloring(..), Icon)


arrowRight =
    html <| chevron_right 20 Inherit


arrowDown =
    el [ rotate 1.55 ] <| arrowRight
