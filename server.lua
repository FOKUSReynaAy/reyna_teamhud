local ESX = exports["es_extended"]:getSharedObject()


local function getteamler()
    local count = 0
    for _, playerId in ipairs(GetPlayers()) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer and (xPlayer.getGroup() == 'support' or
                        xPlayer.getGroup() == 'moderator' or
                        xPlayer.getGroup() == 'administrator' or
                        xPlayer.getGroup() == 'developer' or
                        xPlayer.getGroup() == 'manager' or
                        xPlayer.getGroup() == 'owner') then
            count = count + 1
        end
    end
    return count
end

local function update()
    local count = getteamler()
    
    local info = exports["ws_einreise"]:GetInfo()



   
    local einreiseValue = info.einreise or 0
    local dutyValue = info.duty or 0



    TriggerClientEvent('reyna:update', -1, count, einreiseValue, dutyValue)
end

Citizen.CreateThread(function()
    while true do
        update()
        Citizen.Wait(1000) 
    end
end)




Citizen.CreateThread(function()
    print("^1░▒▓███████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░ ^0")
    print("^1░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ^0")
    print("^1░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ^0")
    print("^1░▒▓███████▓▒░   ░▒▓██████▓▒░ ^0")
    print("^1░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░ ^0")
    print("^1░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░ ^0")
    print("^1░▒▓███████▓▒░     ░▒▓█▓▒░ ^0")
    print("^1                               ^0")
    print("^1                               ^0")
       
    -- Erster Teil in Blau
    print("^4$$$$$$$\\                                          $$\\   $$\\ $$$$$$$\\  ^0")
    print("^4$$  __$$\\                                         $$ |  $$ |$$  __$$\\ ^0")
    print("^4$$ |  $$ | $$$$$$\\  $$\\   $$\\ $$$$$$$\\   $$$$$$\\  $$ |  $$ |$$ |  $$ |^0")
    print("^4$$$$$$$  |$$  __$$\\ $$ |  $$ |$$  __$$\\  \\____$$\\ $$$$$$$$ |$$ |  $$ |^0")
    print("^4$$  __$$< $$$$$$$$ |$$ |  $$ |$$ |  $$ | $$$$$$$ |$$  __$$ |$$ |  $$ |^0")
    print("^4$$ |  $$ |$$   ____|$$ |  $$ |$$ |  $$ |$$  __$$ |$$ |  $$ |$$ |  $$ |^0")
    print("^4$$ |  $$ |\\$$$$$$$\\ \\$$$$$$$ |$$ |  $$ |\\$$$$$$$ |$$ |  $$ |$$$$$$$  |^0")
    print("^4\\__|  \\__| \\_______| \\____$$ |\\__|  \\__| \\_______|\\__|  \\__|\\_______/ ^0")
    print("^4                    $$\\   $$ |                                 ^0")
    print("^4                    \\$$$$$$  |                                 ^0")
    print("^4                     \\______/                                  ^0")

    -- Zweiter Teil in Gelb
    print("^3  __    __  _______  ^0")
    print("^3/  |  /  |/       \\ ^0")
    print("^3$$ |  $$ |$$$$$$$  |^0")
    print("^3$$ |__$$ |$$ |  $$ |^0")
    print("^3$$    $$ |$$ |  $$ |^0")
    print("^3$$$$$$$$ |$$ |  $$ |^0")
    print("^3$$ |  $$ |$$ |__$$ |^0")
    print("^3$$ |  $$ |$$    $$/ ^0")
    print("^3$$/   $$/ $$$$$$$/   ^0")
end)

