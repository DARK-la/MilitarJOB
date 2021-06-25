createBlip ( 95.5736328125, 1918.2197265625,17.048210144043 , 60,  2,  255, 231, 159, 150,  0,  16383.0 )
panelmilitar = guiCreateWindow(446, 211, 365, 253, "Militar", false)
guiWindowSetSizable(panelmilitar, false)
guiSetAlpha(panelmilitar, 1.00)

botoncerrar = guiCreateButton(333, 205, 24, 29, "X", false, panelmilitar)
guiSetProperty(botoncerrar, "NormalTextColour", "FFFE0000")

botonTrabajar = guiCreateButton(40, 197, 107, 34, "Trabajar", false, panelmilitar)
botondejar = guiCreateButton(188, 197, 107, 34, "Dejar trabajo", false, panelmilitar)


memotext = guiCreateMemo(16, 29, 330, 159, "Bienvendio al trabajo de militar, haz click en \"Trabjar\" para tomar el trabajo, si ya te aburriste, usa \"Dejar Trabajo\" para salir del trabajo.", false, panelmilitar)
guiMemoSetReadOnly(memotext, true)
guiSetVisible(panelmilitar,false)
guiSetEnabled ( botondejar,false )


function AbrirPanel()
	if guiGetVisible(panelmilitar) == false then
		guiSetVisible(panelmilitar,true)
		showCursor(true)
	else
		guiSetVisible(panelmilitar,false)
		showCursor(false)
   end
end
addEvent( "onAbrirPanelMilitar1", true )
addEventHandler( "onAbrirPanelMilitar1", localPlayer, AbrirPanel )

function CerrarPanel()
	guiSetVisible(panelmilitar,false)
	showCursor(false)
end
addEventHandler("onClientGUIClick",botoncerrar,CerrarPanel,false)




function TomarTrabajoMilitar()
	  triggerServerEvent ( "onTomarTrabajoMilitar", localPlayer)
	 guiSetEnabled ( botonTrabajar,false )
	 guiSetEnabled ( botondejar,true )
end

addEventHandler("onClientGUIClick",botonTrabajar,TomarTrabajoMilitar,false)



function DejarTrabajo()
	  triggerServerEvent ( "onDejarTrabajoMilitar", localPlayer)
	  guiSetEnabled ( botondejar,false )
	  guiSetEnabled ( botonTrabajar,true )
end

addEventHandler("onClientGUIClick",botondejar,DejarTrabajo,false)