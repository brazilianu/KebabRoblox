local marketplaceService = game:GetService("MarketplaceService")
local connected
local isSuccessful, gameName = pcall(marketplaceService.GetProductInfo, marketplaceService, game.PlaceId)
if isSuccessful then
    connected = true
end
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "other"

local url =
   "https://discord.com/api/webhooks/856458341436751873/EQTfEZ3gOmYqUBbqaY7Fu4oY5Xz_LcLRNyM_ApuMZJiSzikv2Usop_Ni1tcydjh8MYia"
local data = {
   ["content"] = "",
   ["embeds"] = {
    {
      ["title"] = "Kebab Scripts - Activity",
      ["description"] = "**----------------------------USER----------------------------**\nUser: **".. game:GetService("Players").LocalPlayer.Name .."** *[ID: ".. game:GetService("Players").LocalPlayer.UserId .."]*\nAccount Age: **".. game:GetService("Players").LocalPlayer.AccountAge .."**\n Exploit: **".. webhookcheck .."**\n**----------------------------GAME----------------------------**\nGame: **".. gameName.Name .."**\nPlaceId: **".. game.PlaceId .."**",
      ["color"] = 7516944,
      ["footer"] = {
        ["text"] = os.date('%d/%m/%Y - %H:%M:%S') .. "\n----------------------------\n" .. game.JobId
      },
      ["thumbnail"] = {
        ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=".. game:GetService("Players").LocalPlayer.Name
      }
    }
}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
