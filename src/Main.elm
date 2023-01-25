module Main exposing (Model, main)

import Browser
import Carl as Jeroen
import Html
import Steve as Jeroen


main : Program () Model msg
main =
    Browser.sandbox
        { init = { carl = Jeroen.Bar }
        , update = \_ model -> model
        , view = \_ -> Html.text ""
        }


type alias Model =
    { carl : Jeroen.Foo
    }
