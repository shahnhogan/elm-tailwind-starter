module Main exposing (main)

import Accessibility exposing (..)
import Accessibility.Aria as Aria
import Browser
import Html.Attributes exposing (attribute, class, for, id, name, placeholder)
import Html.Events exposing (onInput)



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
    { title : String
    , passcode : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { title = "Verify Passcode"
      , passcode = ""
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp
    | Input String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        Input value ->
            let
                passcode =
                    value
                        |> String.trim
                        |> String.slice 0 6
            in
            ( { model | passcode = passcode }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    main_ [ class "bg-grey-light p-lg" ]
        [ h1 [ class "font-bold text-xl mb-md" ] [ text model.title ]
        , section []
            [ labelBefore [ class "font-bold m-sm placeholder:text-black placeholder:tracking-widest" ]
                (text "Enter Your Code")
                (inputNumber model.passcode
                    [ class "p-xs block m-sm border-grey-dark border-1 text-xl"
                    , id "passcode"
                    , attribute "autocomplete" "one-time-code"
                    , attribute "autocapitalize" "off"
                    , attribute "autocorrect" "off"
                    , attribute "inputmode" "numeric"
                    , placeholder "000000"
                    , onInput Input
                    ]
                )
            ]
        ]
