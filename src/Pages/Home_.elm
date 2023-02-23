module Pages.Home_ exposing (page)

import Html exposing (..)
import Html.Attributes exposing (class, href, src)
import View exposing (View)


header : Html msg
header =
    div [ class "container mx-auto" ]
        [ div
            [ class "flex items-center justify-between py-6 lg:py-10" ]
            [ a
                [ href "/", class "flex items-center" ]
                [ span
                    [ class "mr-2" ]
                    [ img [ src "img/logo.svg" ] [] ]
                , p
                    [ class "hidden font-body text-2xl font-bold text-primary dark:text-white lg:block" ]
                    [ text "iamedu" ]
                ]
            , div
                [ class "hidden lg:block" ]
                [ ul
                    [ class "flex items-center" ]
                    [ li [ class "group relative mr-6 mb-1" ]
                        [ a
                            [ class "relative z-30 block px-2 font-body text-lg font-medium text-primary transition-colors group-hover:text-green dark:text-white dark:group-hover:text-secondary"
                            , href "/"
                            ]
                            [ text "Intro" ]
                        ]
                    ]
                ]
            ]
        ]


content : Html msg
content =
    div [ class "container mx-auto" ]
        [ div [ class "border-b border-grey-lighter py-16 lg:py-20" ]
            [ h1
                [ class "pt-3 font-body text-4xl font-semibold text-primary dark:text-white md:text-5xl lg:text-6xl" ]
                [ text "Hi, I am Edu" ]
            , p
                [ class "pt-3 font-body text-xl font-light text-primary dark:text-white" ]
                [ text "I like building and learning things" ]
            ]
        ]


page : View msg
page =
    { title = "Homepage"
    , body =
        [ header, content ]
    }
