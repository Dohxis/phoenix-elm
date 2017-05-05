module Model exposing (..)


type Route
    = HomepageRoute
    | DashboardRoute
    | NotFoundRoute


type alias Model =
    { route : Route
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    }
