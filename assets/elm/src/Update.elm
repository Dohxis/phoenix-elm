module Update exposing (..)

import Routing exposing (parseLocation)
import Action exposing (..)
import Model exposing (Model)
import Utils.Router exposing (redirectTo)


update : Action -> Model -> ( Model, Cmd Action )
update action model =
    case action of
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        RedirectTo route ->
            ( model, (redirectTo route) )
