configCocoEvent = {
				days = {

					['12/01'] = {'01:27:00'}
				}	
			}

			local daysOpen = {}
			for k, v in pairs(configCocoEvent.days) do
				table.insert(daysOpen, k)
			end

			function onThink(interval)
				if isInArray(daysOpen, os.date("%A")) then
					if isInArray(configCocoEvent.days[os.date("%A")], os.date("%X", os.time())) then
							
						if #getPlayersOnline() >= 1 then
									for i = 1,#getPlayersOnline() do
										doBroadcastMessage("DEUUU")

											contador(getPlayersOnline()[i]) --verifica se zerou o tempo(e joga xpsto zero, e faz as config de base) e se tem player com a xpsto == 0 para reiniciar o sistema
									end
						else --if getGlobalStorageValue(STORAGEGLOBAL) < os.time() then
										doBroadcastMessage("DEUUU")

						setGlobalStorageValue(STORAGEGLOBAL, 0)
							zerar_todos_os_xpsto()
							setGlobalStorageValue(STORAGEGLOBAL, os.time() + (TEMPOSEMANAL))
							salvaserv()
   
						end

						
							
							
						
					end
				end
				return true
			end