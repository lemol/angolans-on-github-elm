-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.EnterpriseServerInstallationOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which Enterprise Server installation connections can be ordered.

  - CreatedAt - Order Enterprise Server installations by creation time
  - CustomerName - Order Enterprise Server installations by customer name
  - HostName - Order Enterprise Server installations by host name

-}
type EnterpriseServerInstallationOrderField
    = CreatedAt
    | CustomerName
    | HostName


list : List EnterpriseServerInstallationOrderField
list =
    [ CreatedAt, CustomerName, HostName ]


decoder : Decoder EnterpriseServerInstallationOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "CUSTOMER_NAME" ->
                        Decode.succeed CustomerName

                    "HOST_NAME" ->
                        Decode.succeed HostName

                    _ ->
                        Decode.fail ("Invalid EnterpriseServerInstallationOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : EnterpriseServerInstallationOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"

        CustomerName ->
            "CUSTOMER_NAME"

        HostName ->
            "HOST_NAME"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe EnterpriseServerInstallationOrderField
fromString enumString =
    case enumString of
        "CREATED_AT" ->
            Just CreatedAt

        "CUSTOMER_NAME" ->
            Just CustomerName

        "HOST_NAME" ->
            Just HostName

        _ ->
            Nothing