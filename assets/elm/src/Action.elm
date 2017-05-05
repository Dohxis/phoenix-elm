module Action exposing (..)

import Navigation exposing (Location)
import Model exposing (..)


type Action
    = OnLocationChange Location
    | RedirectTo Route
