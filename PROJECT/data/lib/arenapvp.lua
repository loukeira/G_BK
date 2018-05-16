-- CONFIGURAÇÕES AQUI

arena = {

	--INICIO DAS CONFIGS DA POSIÇÃO--

	time = 1, -- Minutos se não houver vencedor ambos são kikados
	player1pos = {x= 1098, y= 1056, z= 5}, -- Posição 1
	player2pos = {x= 1100, y= 1056, z= 5}, -- Posição 2
	nplayer1pos = {x= 1096, y= 1064, z= 5}, -- Posição para aonde o player 1 vai ser teleportado..
	nplayer2pos = {x= 1103, y= 1064, z= 5}, -- Posição para aonde o player 2 vai ser teleportado..
	toPos = {x= 1096, y=1061, z= 5},
	fromPos = {x= 1103, y=1066, z= 5},
	--exitPos = {x= 1109, y=1059, z= 6},
	exitPos = {x= 1099, y=1058, z= 5},

	--  FIM DAS CONFIGS DA POSIÇÃO--


	-- NÃO EDITAR SE NÃO POSSUIR CONHECIMENTO --

	gstorage = 147841, -- //GLOBAL STORAGE
	pstorage = 147852, -- //PLAYER STORAGES

}

function getQuantidadeCreature(toPos, fromPos)

	arenaPlayers = 0

	for x = toPos.x, fromPos.x do
		for y = toPos.y, fromPos.y do
			player = getTopCreature({x= x, y= y, z= fromPos.z}).uid
			if isPlayer(player) then
				arenaPlayers = arenaPlayers + 1
			end
		end
	end
	
	return arenaPlayers
end

function doRemoveCreature(toPos, fromPos, teleportTo, storage)

	for x = toPos.x, fromPos.x do
		for y = toPos.y, fromPos.y do
			player = getTopCreature({x= x, y= y, z= fromPos.z}).uid
			if isPlayer(player) then
				doTeleportThing(player, teleportTo)
				setPlayerStorageValue(player, storage, -1)
				doPlayerSendTextMessage(player,18,"Voce foi retirado da Arena!")
                 doSendMagicEffect(getCreaturePosition(player), 2)
			end
		end
	end

	return true
end