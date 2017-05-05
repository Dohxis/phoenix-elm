module Pages.Homepage.Index exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Model exposing (..)
import Action exposing (..)


view : Model -> Html Action
view model =
    div []
        [ text "Homepage"
        , br [] []
        , button [ onClick (RedirectTo DashboardRoute) ] [ text "Go to Dashboard" ]
        ]
