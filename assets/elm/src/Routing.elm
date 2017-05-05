module Routing exposing (..)

import Html exposing (Html, text)
import Navigation exposing (Location)
import Model exposing (..)
import Action exposing (..)
import UrlParser exposing (..)
import Pages.Dashboard.Index as Dashboard
import Pages.Homepage.Index as Homepage


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomepageRoute top
        , map DashboardRoute (s "dashboard")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parsePath matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute


view : Model -> Html Action
view model =
    case model.route of
        HomepageRoute ->
            Homepage.view model

        DashboardRoute ->
            Dashboard.view model

        NotFoundRoute ->
            text "404"
