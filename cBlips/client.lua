-- This part is the code for creating the blip, you can find the configuration part in the config.lua file!

CreateThread(function()
    for k,v in pairs(Config.Blips) do
        local Blips = AddBlipForCoord(QBConfig.Blips[k]['X'], Config.Blips[k]['Y'], Config.Blips[k]['Z'])
        SetBlipSprite(Blips, Config.Blips[k]['SpriteId'])
        SetBlipDisplay(Blips, 4)
        SetBlipScale(Blips, Config.Blips[k]['Scale'])
        SetBlipAsShortRange(Blips, true)
        SetBlipColour(Blips, Config.Blips[k]['Color'])
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blips[k]['Name'])
        EndTextCommandSetBlipName(Blips)
    end
end)
