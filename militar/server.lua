MarcadorTrabajo =  createMarker ( 95.5736328125, 1918.2197265625,17.048210144043, "cylinder", 1.5,  249, 231, 159, 150,  getRootElement( ) )
MarcadorGaragje =  createMarker ( 95.5736328125, 1923.2197265625,17.048210144043, "cylinder", 1.5,  0, 200, 159, 150,  getRootElement( ) )



function AbriPanelDeTrabajao(source,_)
	  triggerClientEvent ( source, "onAbrirPanelMilitar1", source)
end
addEventHandler("onMarkerHit",MarcadorTrabajo,AbriPanelDeTrabajao)


function TomarTrabajoMilitar(player)
	local team = getPlayerTeam(source)
	local Militar = getTeamFromName("Militar")
	if team == Militar then
		outputChatBox("Ya eres militar",player,255,0,0,true)
	else
	 outputChatBox("#F7DC6F[Militar] #FDFEFETomaste el trabajo militar",source,255,255,255,true)
	 setPlayerTeam(source,Militar)
	 outputChatBox("#F7DC6F[Militar] #FDFEFE/fduty para colocarte el traje y armas.",source,255,255,255,true)
	setElementModel(source,287)
 end
end
addEvent ("onTomarTrabajoMilitar",true)
addEventHandler("onTomarTrabajoMilitar",root,TomarTrabajoMilitar)


function ArmasMilitar(source)
	 local team = getTeamFromName("Militar") -- obtener el team por su nombre.
    local pteam = getPlayerTeam(source)
    if (team == pteam) then -- compro
	giveWeapon(source,27,100,true)
	giveWeapon(source,31,100,true)
	setPedArmor(source,100)
	outputChatBox("#F1C40F[Militar] #FDFEFEChaleco, armas y municion obtenida.",source,255,255,255,true)

  end
end
addCommandHandler("fduty",ArmasMilitar,false,false)




function DejarTrabajo(player)
		outputChatBox("Saliste del trabajo de militar.",player,255,12,0,true)
		setElementModel(source,0)
		setPlayerTeam(source,nil)
		takeAllWeapons (source)
 end

addEvent ("onDejarTrabajoMilitar",true)
addEventHandler("onDejarTrabajoMilitar",root,DejarTrabajo)




