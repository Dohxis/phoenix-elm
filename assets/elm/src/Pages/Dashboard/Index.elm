module Pages.Dashboard.Index exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Model exposing (..)
import Action exposing (..)


view : Model -> Html Action
view model =
    div []
        [ text "Dashboard"
        , br [] []
        , button [ onClick (RedirectTo HomepageRoute) ] [ text "Go to Homepage" ]
        ]
