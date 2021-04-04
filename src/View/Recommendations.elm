module View.Recommendations exposing (..)

import Components exposing (channelHeading, date, externalLink, nonNimmoPost, standardAvatar)
import Content.Recommendations as Recommendations exposing (RecommendationContent)
import Element exposing (..)


slug : String
slug =
    "recommendations"


recommendationPost : RecommendationContent -> Element msg
recommendationPost recommendation =
    column [ width fill ]
        [ date recommendation.date
        , nonNimmoPost
            (standardAvatar recommendation.photo)
            recommendation.comment
            recommendation.name
          <|
            Just <|
                externalLink recommendation.link
        ]


view =
    column
        [ height fill
        , width fill
        ]
    <|
        List.concat
            [ [ channelHeading
                    { name = "Recommendations"
                    , description = "Recommendations I've received from colleagues."
                    }
              ]
            , List.map recommendationPost Recommendations.content
            ]
