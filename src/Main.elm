module Main exposing (Model, main)

import Browser
import Carl exposing (..)
import Html


main : Program () Model msg
main =
    Browser.sandbox
        { init = { carl = Bar }
        , update = \_ model -> model
        , view = \_ -> Html.text ""
        }


type alias Model =
    { carl : Foo
    }
