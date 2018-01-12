function onLogin(cid)
if xp_sto(cid) == 2 then 	-- if (getPlayerStorageValue(cid,STORAGEPLAYER) == 3) then
	xprankdiferencial(cid)
	return true
elseif xp_sto(cid) == 1 then 	-- if (getPlayerStorageValue(cid,STORAGEPLAYER) == 3) then
		puxar_da_exp_para_xp_base(cid) -- apenas os online	
		db.executeQuery("UPDATE players SET xpsto = 2 WHERE id = "..getPlayerGUID(cid).." ;")   		-- setPlayerStorageValue(cid, STORAGEPLAYER,5)
		doPlayerSendTextMessage(cid,18,"XPSTO 2, do onlogin")
		salvaroplayer(cid)	
	return true

end
end
