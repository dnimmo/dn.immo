module Route exposing (..)

import Browser.Navigation as Navigation
import Url exposing (Url)
import Url.Parser as Parser exposing (Parser, oneOf, s)
import View.Blogs as Blogs
import View.EmploymentHistory as EmploymentHistory
import View.Homepage as Homepage
import View.Projects as Projects


type Route
    = General
    | EmploymentHistory
    | Blogs
    | Projects
    | Recommendations


parser : Parser (Route -> a) a
parser =
    oneOf
        [ Parser.map General Parser.top
        , Parser.map General (s Homepage.slug)
        , Parser.map EmploymentHistory (s EmploymentHistory.slug)
        , Parser.map Blogs (s Blogs.slug)
        , Parser.map Projects (s Projects.slug)
        ]


fromUrl : Url -> Maybe Route
fromUrl url =
    Parser.parse parser url


toString : Route -> String
toString route =
    case route of
        General ->
            Homepage.slug

        EmploymentHistory ->
            EmploymentHistory.slug

        Blogs ->
            Blogs.slug

        Projects ->
            Projects.slug

        _ ->
            "error"


pushUrl : Navigation.Key -> Route -> Cmd msg
pushUrl key route =
    Navigation.pushUrl key ("/" ++ toString route)
