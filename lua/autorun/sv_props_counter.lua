local propCount = 0

hook.Add("PlayerSpawnedProp", "CountProps", function(ply, model, ent)
    propCount = propCount + 1
end)

hook.Add("PlayerSay", "CheckPropsCommand", function(ply, text, isTeam)
    if text == "!props" then
        if IsValid(ply) then
            ply:ChatPrint(propCount .. " props.")
        end
    end
end)

