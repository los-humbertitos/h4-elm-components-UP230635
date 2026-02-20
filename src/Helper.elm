module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    -- Your definition here
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html.Html msg
headers content =
    --    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
    Html.div []
        [ Html.h1 [] [ Html.text content ]
        , Html.h2 [] [ Html.text content ]
        , Html.h3 [] [ Html.text content ]
        , Html.h4 [] [ Html.text content ]
        , Html.h5 [] [ Html.text content ]
        , Html.h6 [] [ Html.text content ]
        ]



--    Html.text content


hyperlink : String -> String -> Html.Html msg
hyperlink link content =
    Html.a [ Html.Attributes.href link ] [ Html.text content ]



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
--main : Html.Html msg
--main =
--    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
