-- For ROBLOX experiences
-- in Server Script object

local players = game:GetService("Players")

local accounts = {0,0,0} -- Accounts IDs
local kick_message = "You were not in the game whitelist. Sorry!" -- Your kick message

players.PlayerAdded:Connect(function(player)
	if not table.find(accounts,player.UserId) then
		print(player.Name.." attempted to join the game but was not in the whitelist.") -- The script prints a message to indicate to others that an unauthorized player attempted to enter
		PLAYER:Kick(kick_message) -- The players is kicked
	end
end)
