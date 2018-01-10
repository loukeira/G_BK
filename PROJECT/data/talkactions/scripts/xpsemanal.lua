function convertTime(time)
local t_table = {}
t_table.days = math.floor(time / 86400)
time = time - (t_table.days * 86400)
t_table.hours = math.floor(time / 3600)
time = time - (t_table.hours * 3600)
t_table.minutes = math.floor(time / 60)
t_table.seconds = time - (t_table.minutes * 60)
return t_table
end


local xp_de_comparacao = 8002
local diferenca_de_xp = 16806
local globau = 16856

function onSay(cid, words, param, channel)
if getPlayerStorageValue(cid,globau) < os.time() then
doPlayerSendTextMessage(cid,22,"O sistema vai reiniciar")
else
local time_model = "%d dia(s), %d hora(s), %d minuto(s) e %d segundo(s)."
local timeLeft = convertTime(getPlayerStorageValue(cid, globau) - os.time())

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'O sistema ira reiniciar daqui ' ..time_model:format(timeLeft.days, timeLeft.hours, timeLeft.minutes, timeLeft.seconds))



doPlayerSendTextMessage(cid,22," xp atual : "..xpdapessoa(cid).."  ")
doPlayerSendTextMessage(cid,22," xp usado como base(antigo): "..antigaxp(cid).." ")
doPlayerSendTextMessage(cid,22," O seu ganho de xp foi de: "..xprankdiferencial(cid).." ate o momento! ")


end
return true
end
