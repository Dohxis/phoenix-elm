module Main exposing (..)

import Navigation exposing (Location)
import Model exposing (..)
import Routing
import Update exposing (..)
import Action exposing (..)


init : Location -> ( Model, Cmd Action )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )


main : Program Never Model Action
main =
    Navigation.program OnLocationChange
        { init = init
        , view = Routing.view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
