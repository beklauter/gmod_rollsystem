hook.Add("PlayerSay", "RollCommand", function(ply, text, teamChat)
    if string.lower(text) == "/roll" then
        local pos = ply:GetPos()
        local players = player.GetAll()

        local rollNumber = math.random(1, 100)

        for _, player in ipairs(players) do
            if player:GetPos():Distance(pos) <= 25 then
                player:ChatPrint(ply:Nick() .. " rollt: " .. rollNumber)
            end
        end

        return ""
    end
end)

hook.Add("PlayerSay", "RollGCommand", function(ply, text, teamChat)
    if string.lower(text) == "/rollg" then
        local rollNumber = math.random(1, 100)
        for _, player in ipairs(player.GetAll()) do
            player:ChatPrint(ply:Nick() .. " Rollt (Global): " .. rollNumber)
        end
        return ""
    end
end)

hook.Add("PlayerSay", "GRollCommand", function(ply, text, teamChat)
    if string.lower(text) == "/groll" then
        local rollNumber = math.random(1, 100)
        for _, player in ipairs(player.GetAll()) do
            player:ChatPrint(ply:Nick() .. " Rollt (Global): " .. rollNumber)
        end
        return ""
    end
end)