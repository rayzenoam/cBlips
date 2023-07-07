CreateThread(function()
    for k, v in pairs(Config.Blip) do
        Blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipSprite(Blip, v.sprite)
        SetBlipScale(Blip, v.scale)
        SetBlipColour(Blip, v.colour)
        SetBlipAsShortRange(Blip, v.asshortrange)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(Blip)
    end
end)