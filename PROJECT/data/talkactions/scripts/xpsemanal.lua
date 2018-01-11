
local xp_de_comparacao = XP_DE_COMPARACAO
local diferenca_de_xp = DIFERENCA_DE_XP

function onSay(cid, words, param, channel)
if getPlayerStorageValue(cid,14932) < os.time() then
	doPlayerSendCancel(cid,"Espere um pouco para usar o comando novamente!")
	setPlayerStorageValue(cid,14932,os.time() + 2000)
	return true
end
if getGlobalStorageValue(STORAGEGLOBAL) < os.time() then
doPlayerSendCancel(cid, "o sistema vai reiniciar")
else
local time_model = "%d dia(s), %d hora(s), %d minuto(s) e %d segundo(s)."
local timeLeft = convertTime(getGlobalStorageValue(STORAGEGLOBAL) - os.time())

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'O sistema ira reiniciar daqui ' ..time_model:format(timeLeft.days, timeLeft.hours, timeLeft.minutes, timeLeft.seconds))

doPlayerSendTextMessage(cid,27," xp atual : "..xpdapessoa(cid).."  ")
doPlayerSendTextMessage(cid,27," xp usado como base(antigo): "..antigaxp(cid).." ")

	if tonumber(xpdapessoa(cid)) < tonumber(getPlayerStorageValue(cid,antigaxp(cid))) then
		setPlayerStorageValue(cid,xp_de_comparacao,xpdapessoa(cid)) 	
		db.executeQuery("UPDATE players SET xpbase = "..xpdapessoa(cid).." WHERE id = "..getPlayerGUID(cid).." ;")
	end			
doPlayerSendTextMessage(cid,27," O seu ganho de xp foi de: "..xprankdiferencial(cid).." ate o momento! ")

end
return true
end
