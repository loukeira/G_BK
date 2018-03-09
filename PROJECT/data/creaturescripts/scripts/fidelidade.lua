
local fidelidade_sto = 53363
function onThink(cid, interval)
	if not isplayer then
		return true
	end

	doPlayerSetStorageValue(cid, fidelidade_sto, getPlayerStorageValue(cid,fidelidade_sto) + 1)
	
	doPlayerSendTextMessage(cid, 18,"sua fidelidade tem o valor de : "..getPlayerStorageValue(cid,fidelidade_sto).."" )

	return true
end
