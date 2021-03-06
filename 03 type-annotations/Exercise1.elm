module Main exposing (..)

import Html


cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


free minQty freeQty item =
    if item.freeQty == 0 && item.qty >= minQty then
        { item | freeQty = freeQty }
    else
        item


main =
    List.map ((free 10 3) >> (free 5 1)) cart
        |> toString
        |> Html.text
