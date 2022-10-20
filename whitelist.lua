local PLAYERS = game:GetService("Players")

local ACCOUNTS_IDS = {0,0,0} -- Accounts IDs
local KICK_MESSAGE = "You were not in the game whitelist. Sorry!" -- Your kick message

PLAYERS.PlayerAdded:Connect(function(PLAYER)
	if not table.find(ACCOUNTS_IDS,PLAYER.UserId) then
		print(PLAYER.Name.." attempted to join the game but was not in the whitelist.") -- The script prints a message to indicate to others that an unauthorized player attempted to enter
		PLAYER:Kick(KICK_MESSAGE) -- The players is kicked
	end
end)