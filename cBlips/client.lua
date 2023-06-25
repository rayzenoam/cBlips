-- This part is the code for creating the blip, you can find the configuration part in the config.lua file!

CreateThread(function()
    for _, v in pairs(Config.Blip) do
        local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipSprite(blip, v.sprite)
        SetBlipScale(blip, v.scale)
        SetBlipColour(blip, v.colour)
        SetBlipAsShortRange(blip, v.asshortrange)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(blip)
    end
end)