Config = {
    -- This message must be a string and you can use the ~y~ color codes
    Message = "You can ~r~not ~w~drive this vehicle!",
    Blocked = {
        -- Hash must be the hash number of the vehicle in question
        -- Ace must be in "" to work properly
        -- Delete is either true or false
        {hash = 562680400, delete = true}, -- APC
        {hash = -823509173, ace = "admin"}, -- Barracks
        {hash = 1074326203}, -- Barracks2
        {hash = 630371791, delete = true}, -- Barracks3
        {hash = 321739290, ace = "mod"}, -- Crusader
        {hash = -32236122, ace = nil, delete = true}, -- Halftrack
        {hash = 782665360, delete = true}, --Rhino
        {hash = -1881846085, ace = "mod"}, --Trailersmall2
        {hash = 970385471, delete = true}, --Hydra
        {hash = -1281684762, delete = true} --Lazer
    }
}
