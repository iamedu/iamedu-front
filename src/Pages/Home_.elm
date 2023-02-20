module Pages.Home_ exposing (page)

import Html
import Html.Attributes exposing (class)
import View exposing (View)


page : View msg
page =
    { title = "Homepage"
    , body =
        [ Html.h1
            [ class "text-3xl font-bold underline" ]
            [ Html.text "Hello, world!" ]
        ]
    }
