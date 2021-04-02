module View.EmploymentHistory exposing (..)

import Components exposing (channelHeading, date, post)
import Element exposing (..)


slug =
    "employment-history"


view : Element msg
view =
    column
        [ height fill
        , width fill
        ]
        [ channelHeading
            { name = "Employment History"
            , description = "Information about my employment history. Details in threads."
            }
        , column
            [ height fill
            , width fill
            ]
            [ date "Jun 2020 - Now"
            , post
                [ "Full-stack engineer at MindGym"
                ]
                Nothing
            , date "Apr 2019 - Jun 2020"
            , post
                [ "Tech Lead at Click Travel - Front-End Architecture Team" ]
                Nothing
            , date "Apr 2017 - Apr 2019"
            , post
                [ "Senior Software Engineer at Click Travel - Pioneer Flights" ]
                Nothing
            , date "Jun 2016 - Apr 2017"
            , post
                [ "Lead Software Engineer at Department For Work & Pensions" ]
                Nothing
            , date "Jan 2016 - May 2016"
            , post
                [ "Senior Applications Developer at Nomad Digital" ]
                Nothing
            , date "Jan 2015 - Dec 2015"
            , post
                [ "Technical Design Lead at British Airways - Core Engineering Team" ]
                Nothing
            , date "Mar 2013 - Dec 2014"
            , post
                [ "Technical Design Lead at British Airways - Mobile ba.com" ]
                Nothing
            , date "Mar 2012 - Mar 2013"
            , post
                [ "Technical Design Lead at British Airways - ba.com (Information Site)" ]
                Nothing
            , date "Jan 2012 - May 2012"
            , post
                [ "Technical Design Lead at British Airways - One Destination" ]
                Nothing
            , date "Sep 2008 - Jan 2012"
            , post
                [ "Software Engineer at British Airways - ba.com" ]
                Nothing
            ]
        ]
