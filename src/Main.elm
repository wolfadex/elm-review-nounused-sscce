module Main exposing (Model, Msg, main)

import Browser
import Carl exposing (..)
import Html
import Html.Events


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


type alias Model =
    { count : Int
    , carl : Foo
    }


init : Model
init =
    { count = 0
    , carl = Foo
    }


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 }

        Decrement ->
            { model | count = model.count - 1 }


view : Model -> Html.Html Msg
view model =
    Html.div
        []
        [ Html.button
            [ Html.Events.onClick Increment ]
            []
        , Html.button
            [ Html.Events.onClick Decrement ]
            []
        ]
