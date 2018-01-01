function onSay(cid, words, param, channel)
	local param = param:lower()
	if param == "" or not param then
		doPlayerSendCancel(cid, "Voce precisa digitar o nome de um jogador.") return true
	elseif param == "points" then
		doPlayerPopupFYI(cid,"[+] Invite Friend System [+]\n\nvoce tem ["..getInvitePoints(cid).."] Friends Points.") return true
	elseif hasInviteFriend(cid) then
		doPlayerSendCancel(cid, "Voce ja selecionou o jogador ["..getNameFriend(cid).."] para receber recompensas por te convidar a jogar neste servidor!") return true
	elseif not getPlayerGUIDByName(param) then
		doPlayerSendCancel(cid, "Desculpe, mas o jogador [" .. param .. "] não existe.") return true
	elseif getPlayerIp(cid) == tonumber(db.getResult("SELECT `lastip` FROM `players` WHERE `id` = "..getPlayerGUIDByName(param)):getDataString("lastip")) then
	doPlayerSendCancel(cid, "Desculpe, mas você não pode se auto invitar por estar com o mesmo IP.") return true
	elseif getPlayerLevel(cid) > _invite_friends.level_max or db.getResult("SELECT `level` FROM `players` WHERE `id` = "..getPlayerGUIDByName(param)):getDataInt("level") < _invite_friends.level_need then
		doPlayerSendCancel(cid, (getPlayerLevel(cid) > _invite_friends.level_max and "Desculpe, mas você precisa ter no minimo level ".._invite_friends.level_max.." para usar este comando." or "Desculpe, mas o jogador ["..param.."] precisa ter no minimo level ".._invite_friends.level_need.." para ser escolhido.")) return true
	elseif getCreatureName(cid):lower() == param then
		doPlayerSendCancel(cid, "Desculpe, mas você não pode se auto invitar.") return true
	end
	doInviteFriend(cid, getPlayerGUIDByName(param))

	
	doPlayerSendTextMessage(cid, 25, "Você indicou o jogador "..param..", este sistema é uma forma de agradecer a vocês por trazerem seus amigos para jogar.")
	doSendMagicEffect(getCreaturePosition(cid), math.random(28,30))
	return true
end

