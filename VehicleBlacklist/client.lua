local veh

CreateThread(function()
    while true do
        Wait(2000)
        veh = GetVehiclePedIsEntering(PlayerPedId())
		local playerSeat = GetSeatPedIsTryingToEnter(PlayerPedId())
		if playerSeat == -1 then
			local vehHash = GetEntityModel(veh)
			for i = 1, #Config.Blocked do
				local blockedHash = Config.Blocked[i].hash
				if vehHash == blockedHash then
					if Config.Blocked[i].ace ~= nil then
						TriggerServerEvent('blacklistAceCheck', Config.Blocked[i].ace, Config.Blocked[i].delete)
					else
						VehicleControl(Config.Blocked[i].delete)
					end
				end
			end
		end
    end
end)

RegisterNetEvent('blacklistAceReturn')
AddEventHandler('blacklistAceReturn', function(aceCheck, deleteVeh)
    if aceCheck ~= 1 then
        VehicleControl(deleteVeh)
    end
end)

function VehicleControl(deleteVeh)
    if deleteVeh == true then
		print(Config.Message)
        SetEntityAsMissionEntity(veh, true, true)
        DeleteVehicle(veh)
		ShowNotif()
    else
		TaskLeaveVehicle(PlayerPedId(), veh, 0)
		ShowNotif()
    end
end

function ShowNotif()
	BeginTextCommandPrint('STRING')
	AddTextComponentString(Config.Message)
	EndTextCommandPrint(5000, true)
end
