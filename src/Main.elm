module Main exposing (main)

import Accessibility exposing (..)
import Browser
import Html.Attributes exposing (class, for, id, name, placeholder)



-- MAIN


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }



-- MODEL


type alias Model =
    { title : String }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { title = "Tailwind" }, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html msg
view model =
    main_ [ class "bg-gray-light p-xl" ]
        [ h1 [] [ text "Welcome" ]
        ]
