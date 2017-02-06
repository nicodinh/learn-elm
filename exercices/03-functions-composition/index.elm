module Main exposing (..)

import Html exposing (text)

-- politely type definition with String parameter and return a String
politely : String -> String 
-- politely function
politely phrase = "Excuse me, " ++ phrase

-- In this case, ask fish, instead of returning a string, 
-- returns a function that takes a string and then returns the string.
ask : String -> String -> String
-- ask function
ask thing place = "is there a " ++ thing ++ " in the " ++ place ++ "?"

-- main type definition with Html parameter
main : Html.Html msg
-- <| is a pipeline operator
main = text
  <| politely
  <| ask "fish" "Bocal"