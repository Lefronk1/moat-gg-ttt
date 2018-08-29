local PLAYER = FindMetaTable "Player"
local ENTITY = FindMetaTable "Entity"
local ent_table = ENTITY.GetTable

function PLAYER:__index(k)
	if (PLAYER[k]) then
		return PLAYER[k]
	end

	if (ENTITY[k]) then
		return ENTITY[k]
	end

	return ent_table(self)[k]
end

local function SteamID(pl)
	return IsValid(pl) and pl:SteamID()
end

local function SteamID64(pl)
	return IsValid(pl) and pl:SteamID64()
end

function Name(ply)
	return IsValid(ply) and ply:Name() or "Player"
end

function PLAYER:NameInfo(str, split)
	str = str and " (" .. str .. ")" or ""

	if (split) then
		return Name(self), str
	end

	return Name(self) .. str
end

local NameInfo = PLAYER.NameInfo

function PLAYER:NameID(split)
	return NameInfo(self, SteamID(self), split)
end

function PLAYER:NameID64(split)
	return NameInfo(self, SteamID64(self), split)
end