
local xp_de_comparacao = XP_DE_COMPARACAO
local diferenca_de_xp = DIFERENCA_DE_XP
local stu,exhaust = 33589,3

function onSay(cid, words, param, channel)
if (getPlayerStorageValue(cid, stu) <= os.time()) then
   setPlayerStorageValue(cid, stu, os.time()+ exhaust)

if getGlobalStorageValue(STORAGEGLOBAL) < os.time() then
doPlayerSendTextMessage(cid,27, "o sistema vai reiniciar")
else
local time_model = "%d dia(s), %d hora(s), %d minuto(s) e %d segundo(s)."
local timeLeft = convertTime(getGlobalStorageValue(STORAGEGLOBAL) - os.time())

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'O sistema ira reiniciar daqui ' ..time_model:format(timeLeft.days, timeLeft.hours, timeLeft.minutes, timeLeft.seconds))

doPlayerSendTextMessage(cid,27," xp atual : "..xpdapessoa(cid).."  ")
doPlayerSendTextMessage(cid,27," xp usado como base(antigo): "..antigaxp(cid).." ")

	if tonumber(xpdapessoa(cid)) < tonumber(antigaxp(cid)) then
		db.executeQuery("UPDATE players SET xpbase = "..xpdapessoa(cid).." WHERE id = "..getPlayerGUID(cid).." ;")
	end			
doPlayerSendTextMessage(cid,27," O seu ganho de xp foi de: "..xprankdiferencial(cid).." ate o momento! ")

end
else
   doPlayerSendTextMessage(cid,18, "Voce so pode usar o comando a  cada "..exhaust.." segundos")
   return true

end
return true
end
