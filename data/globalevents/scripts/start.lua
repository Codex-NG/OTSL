	-- Made by Leon Zawodowiec --
function onStartup()
	db.executeQuery("DELETE FROM `guild_wars` WHERE `status` = 0 AND `begin` < " .. (os.time() - 2 * 86400) .. ";")
	db.executeQuery("UPDATE `guild_wars` SET `status` = 5, `end` = " .. os.time() .. " WHERE `status` = 1 AND `end` > 0 AND `end` < " .. os.time() .. ";")
end
