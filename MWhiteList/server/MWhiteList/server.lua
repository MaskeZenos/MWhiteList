WhiteList = {
    discord = {
        "discord:673124583779467284",
        "discord:1234567890",
    },
    steam = {
        "steam:1234567890",
        "steam:1234567890",
    },
    license = {
        "license:1234567890",
        "license:1234567890",
    },
    xbl = {
        "xbl:1234567890",
        "xbl:1234567890",
    },
    live = {
        "live:1234567890",
        "live:1234567890",
    },
    ip = {
        "ip:1234567890",
        "ip:1234567890",
    },
}

-- Pas touche la mouche

steamid1  = nil
license1  = nil
discord1  = nil
xbl1      = nil
liveid1   = nil
ip1       = nil

AddEventHandler('playerConnecting', function(playerName, setKickReason, deferrals)
    for k, v in pairs(GetPlayerIdentifiers(source)) do
        
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steamid1 = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
            license1 = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
            xbl1  = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
            ip1 = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord1 = v
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
            liveid1 = v
        end
    end

    local isWhitelisted = false
    
    for _, v in pairs(WhiteList.discord) do
        if v == discord1 then
            isWhitelisted = true
            break
        end
    end
    
    if not isWhitelisted then
        for _, v in pairs(WhiteList.steam) do
            if v == steamid1 then
                isWhitelisted = true
                break
            end
        end
    end
    
    if not isWhitelisted then
        for _, v in pairs(WhiteList.license) do
            if v == license1 then
                isWhitelisted = true
                break
            end
        end
    end
    
    if not isWhitelisted then
        for _, v in pairs(WhiteList.xbl) do
            if v == xbl1 then
                isWhitelisted = true
                break
            end
        end
    end
    
    if not isWhitelisted then
        for _, v in pairs(WhiteList.live) do
            if v == liveid1 then
                isWhitelisted = true
                break
            end
        end
    end
    
    if not isWhitelisted then
        for _, v in pairs(WhiteList.ip) do
            if v == ip1 then
                isWhitelisted = true
                break
            end
        end
    end

    if isWhitelisted then
        deferrals.done()
    else
        print ("[WhiteList] " .. GetPlayerName(source) .. " a essayé de se connecter mais n'est pas whitelist.")
        deferrals.done("Vous n'êtes pas whitelist sur ce serveur.")
    end
end)
