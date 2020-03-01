----------------------------------------
--- Discord Whitelist, Made by FAXES ---
----------------------------------------

--- Config ---
roleNeeded = "Whitelisted" -- The role nickname needed to pass the whitelist
notWhitelisted = "No estas en la Whitelist del servidor. Haz tu solicitud en el Discord Oficial de OAKUM." -- Message displayed when they are not whitelist with the role
noDiscord = "Necesitas tener Discord para entrar al servidor!" -- Message displayed when discord is not found


--- Code ---

AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
    local src = source
    deferrals.defer()
    deferrals.update("Checking Permissions")

    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
        end
    end

    local allowed = false
    if identifierDiscord then
        if exports.discord_perms:IsRolePresent(src, roleNeeded) then
            deferrals.done()
            allowed = true
        else
            deferrals.done(notWhitelisted)
        end
    else
        deferrals.done(noDiscord)
    end
end)