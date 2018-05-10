local config = {effect1 = 4, -- efeito ao pisar
effect2 = 5, -- efeito ao explodir
msg = "Voce foi acertado pela bomba.",-- msg que manda pra quem for acertado
mindmg = 40,-- dmg minimo que tira (nao é necessariamente o dano que vai sair do cara pois precisa desconsiderar as defesas dele antes)
maxdmg = 60,  -- dmg maximo que tira (nao é o dano que vai sair do cara)
self = true -- true/false pra ativar/desativar dano no cara que colocou a bomba caso ele mesmo passe na bomba.
}

  local arr = {
  {0, 1, 0},
  {1, 3, 1}, -- area que vai acertar ao explodir a bomba
  {0, 1, 0},
}

  local area = createCombatArea(arr)
  function onStepIn(cid, item, position)  
    local player = getPlayerByNameWildcard(getItemAttribute(item.uid, 'ref'))   
     doSendMagicEffect(position, config.effect1)   
      if isCreature(player) then      
        doAreaCombatHealth(player, COMBAT_FIREDAMAGE, position, area, -config.mindmg, -config.maxdmg, config.effect2) 
             doSendAnimatedText(getCreaturePosition(player), "BOOM!", 190)
 
          end   

     if ((cid == player and config.self) or (not isPlayer(cid)) or (not isCreature(player))) then        
     	doCreatureAddHealth(cid, -1 * math.random(config.mindmg, config.maxdmg))  
                   doSendAnimatedText(getCreaturePosition(cid), "BOOM!", 190)

     	doSendMagicEffect(position, config.effect2)   
     	 end    
     	 if isPlayer(cid) then       
     	  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msg)    
     	  end    
     	  doRemoveItem(item.uid)
     	  return true
     	end
