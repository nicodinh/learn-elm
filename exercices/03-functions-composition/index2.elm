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

{-
I'm not going to specify any parameters. That's because we're going to use what's called a point-free style. 
I'll enter my first function name here, politely, and then I'm going to use another character that's built into Elm,
which is the double less than character.

This character is for function composition. 
This is built for taking two functions that have compatible inputs and outputs, 
and building them up to make one function. On the right side of this operator, 
I'll put parens, and then I'll type, "Ask fish."

What I've got inside these parens is a partially applied function. In other words, 
I have called ask with the first argument, and I've gotten back a function that takes the second argument 
and then gives us the return value.

What this needs is a place. I've put that together, so now I've got a function that takes a string and returns a string. 
Then I'm telling Elm that I want to combine this with another function that takes a string a string and returns a string. 
Then I want to assign that whole value to ask politely about fish.

Ask politely about fish on the right side will take the place, run it through ask fish, 
and then it will run it through politely, and then we're going to get a return value of a string. 
Down here, instead of doing these two calls, I can go ahead and call ask politely about fish, hat.
-}

askPolitelyAboutFish : String -> String
-- << is a composition operator
askPolitelyAboutFish = politely << ask("fish")

-- main type definition with Html parameter
main : Html.Html msg
-- <| is a pipeline operator
main = text
  <| askPolitelyAboutFish "hat"