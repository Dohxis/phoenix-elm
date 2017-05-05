module Utils.Router exposing (..)

import Model exposing (..)
import Navigation exposing (..)


stringToPath : Route -> String
stringToPath route =
    case route of
        HomepageRoute ->
            "/"

        DashboardRoute ->
            "/dashboard"

        NotFoundRoute ->
            "/404"


redirectTo : Route -> Cmd msg
redirectTo route =
    Navigation.newUrl (stringToPath route)
