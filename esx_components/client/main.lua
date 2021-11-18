local ESX = nil
local weapons = {
    -- Add-On Weapon Components
    [GetHashKey('weapon_sig')] = { m18suppressor = GetHashKey('COMPONENT_SIG_SUPP_01'),  m18suppressorv2 = GetHashKey('COMPONENT_SIG_SUPP_02'), m18suppressorv3 = GetHashKey('COMPONENT_SIG_SUPP_03'), m18flashlight = GetHashKey('COMPONENT_SIG_FLSH_01'), m18flashlightv2 = GetHashKey('COMPONENT_SIG_FLSH_02'), m18flashlightv3 = GetHashKey('COMPONENT_SIG_FLSH_03'), m18scope = GetHashKey('COMPONENT_SIG_SCOPE_01'), m18scopev2 = GetHashKey('COMPONENT_SIG_SCOPE_02'), m18scopev3 = GetHashKey('COMPONENT_SIG_SCOPE_03'), m18extended_magazine = GetHashKey('COMPONENT_SIG_CLIP_02') },
    [GetHashKey('weapon_m9')] = { m9a3magazine = GetHashKey('COMPONENT_M9_CLIP_02') },
    [GetHashKey('weapon_m4a1fm')] = { m4a1barrel = GetHashKey('COMPONENT_M4A1FM_BARREL_01'), m4a1barrelv2 = GetHashKey('COMPONENT_M4A1FM_BARREL_02'), m4a1barrelv3 = GetHashKey('COMPONENT_M4A1FM_BARREL_03'), m4a1barrelv4 = GetHashKey('COMPONENT_M4A1FM_BARREL_04'), m4a1magazine = GetHashKey('COMPONENT_M4A1FM_CLIP_01'), m4a1magazinev2 = GetHashKey('COMPONENT_M4A1FM_CLIP_02'), m4a1magazinev3 = GetHashKey('COMPONENT_M4A1FM_CLIP_03'), m4a1magazinev4 = GetHashKey('COMPONENT_M4A1FM_CLIP_04'), m4a1flashlight = GetHashKey('COMPONENT_M4A1FM_FLSH_01'), m4a1flashlightv2 = GetHashKey('COMPONENT_M4A1FM_FLSH_02'), m4a1flashlightv3 = GetHashKey('COMPONENT_M4A1FM_FLSH_03'), m4a1flashlightv4 = GetHashKey('COMPONENT_M4A1FM_FLSH_04'), m4a1flashlightv5 = GetHashKey('COMPONENT_M4A1FM_FLSH_05'), m4a1flashlightv6 = GetHashKey('COMPONENT_M4A1FM_FLSH_06'), m4a1scope = GetHashKey('COMPONENT_M4A1FM_SCOPE_01'), m4a1scopev2 = GetHashKey('COMPONENT_M4A1FM_SCOPE_02'), m4a1scopev3 = GetHashKey('COMPONENT_M4A1FM_SCOPE_03'), m4a1scopev4 = GetHashKey('COMPONENT_M4A1FM_SCOPE_04') },
    [GetHashKey('weapon_glock')] = { g17magazine = GetHashKey('COMPONENT_GLOCK_CLIP_01'), g17magazinev2 = GetHashKey('COMPONENT_GLOCK_CLIP_02'), g17magazinev3 = GetHashKey('COMPONENT_GLOCK_CLIP_03'), g17magazinev4 = GetHashKey('COMPONENT_GLOCK_CLIP_04'), g17flashlight = GetHashKey('COMPONENT_GLOCK_FLSH_01'), g17flashlightv2 = GetHashKey('COMPONENT_GLOCK_FLSH_02'), g17flashlightv3 = GetHashKey('COMPONENT_GLOCK_FLSH_03'), g17flashlightv4 = GetHashKey('COMPONENT_GLOCK_FLSH_04'), g17slide = GetHashKey('COMPONENT_SLIDE_01'), g17slidev2 = GetHashKey('COMPONENT_SLIDE_02'), g17slidev3 = GetHashKey('COMPONENT_SLIDE_03'), g17slidev4 = GetHashKey('COMPONENT_SLIDE_04'), g17slidev5 = GetHashKey('COMPONENT_SLIDE_05'), g17slidev6 = GetHashKey('COMPONENT_SLIDE_06'), g17slidev7 = GetHashKey('COMPONENT_SLIDE_07'), g17slidev8 = GetHashKey('COMPONENT_SLIDE_08'), g17slidev9 = GetHashKey('COMPONENT_SLIDE_09'), g17suppressor = GetHashKey('COMPONENT_SUPP_01'), g17suppressorv2 = GetHashKey('COMPONENT_SUPP_02'), g17suppressorv3 = GetHashKey('COMPONENT_SUPP_03'), g17suppressorv4 = GetHashKey('COMPONENT_SUPP_04'), g17suppressorv5 = GetHashKey('COMPONENT_SUPP_05'), g17suppressorv6 = GetHashKey('COMPONENT_SUPP_06'), g17suppressorv7 = GetHashKey('COMPONENT_SUPP_07') }
}

-- ESX
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- ESX, playerloaded
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

-- Use item
RegisterNetEvent('esx_component:use')
AddEventHandler('esx_component:use', function( type )
    if weapons[GetSelectedPedWeapon(PlayerPedId())] and weapons[GetSelectedPedWeapon(PlayerPedId())][type] then
        if not HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), weapons[GetSelectedPedWeapon(PlayerPedId())][type]) then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), weapons[GetSelectedPedWeapon(PlayerPedId())][type])
            ESX.ShowNotification(string.format('%s %s', "You've equiped your ", type))
        else
            RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), weapons[GetSelectedPedWeapon(PlayerPedId())][type])
            ESX.ShowNotification(string.format('%s %s', "You've removed your ", type))
        end
    else
        ESX.ShowNotification(string.format('%s %s %s', 'The ', type, " doesn't fit on your weapon.."))
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(0, 172) then
			if weapons[GetSelectedPedWeapon(PlayerPedId())] then
				for k,v in pairs(weapons) do
					if GetSelectedPedWeapon(PlayerPedId()) == k then
                        if HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18suppressor) then
                                TriggerServerEvent('esx_component:giveBack', 'm18suppressor')
                                ESX.ShowNotification("You've removed your weapon suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18suppressor)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18flashlight) then
                                TriggerServerEvent('esx_component:giveBack', 'm18flashlight')
                                ESX.ShowNotification("You've removed your weapon TLR1")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18flashlight)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18flashlightv2) then
                                TriggerServerEvent('esx_component:giveBack', 'm18flashlightv2')
                                ESX.ShowNotification("You've removed your weapon TLR2")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18flashlightv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18flashlightv3) then
                                TriggerServerEvent('esx_component:giveBack', 'm18flashlightv3')
                                ESX.ShowNotification("You've removed your weapon TLR3")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18flashlightv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18scope) then
                                TriggerServerEvent('esx_component:giveBack', 'm18scope')
                                ESX.ShowNotification("You've removed your RDS")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18scope)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18scopev2) then
                                TriggerServerEvent('esx_component:giveBack', 'm18scopev2')
                                ESX.ShowNotification("You've removed your RDS2")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18scopev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18scopev3) then
                                TriggerServerEvent('esx_component:giveBack', 'm18scopev3')
                                ESX.ShowNotification("You've removed your RDS3")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18scopev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18extended_magazine) then
                                TriggerServerEvent('esx_component:giveBack', 'm18extended_magazine')
                                ESX.ShowNotification("You've removed your extended magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18extended_magazine)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18suppressorv2) then
                                TriggerServerEvent('esx_component:giveBack', 'm18suppressorv2')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18suppressorv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18suppressorv3) then
                                TriggerServerEvent('esx_component:giveBack', 'm18suppressorv3')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m18suppressorv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m9a3magazine) then
                                TriggerServerEvent('esx_component:giveBack', 'm9a3magazine')
                                ESX.ShowNotification("You've removed your extended magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m9a3magazine)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrel) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1barrel')
                                ESX.ShowNotification("You've removed your M4A1 Barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrel)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrelv2) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1barrelv2')
                                ESX.ShowNotification("You've removed your M4A1 Barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrelv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrelv3) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1barrelv3')
                                ESX.ShowNotification("You've removed your M4A1 Barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrelv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrelv4) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1barrelv4')
                                ESX.ShowNotification("You've removed your M4A1 Barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1barrelv4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazine) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1magazine')
                                ESX.ShowNotification("You've removed your M4A1 Magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazine)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazinev2) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1magazinev2')
                                ESX.ShowNotification("You've removed your M4A1 Magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazinev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazinev3) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1magazinev3')
                                ESX.ShowNotification("You've removed your M4A1 Magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazinev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazinev4) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1magazinev4')
                                ESX.ShowNotification("You've removed your M4A1 Magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1magazinev4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlight) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1flashlight')
                                ESX.ShowNotification("You've removed your M4A1 Flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlight)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv2) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1flashlightv2')
                                ESX.ShowNotification("You've removed your M4A1 Flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv3) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1flashlightv3')
                                ESX.ShowNotification("You've removed your M4A1 Flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv4) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1flashlightv4')
                                ESX.ShowNotification("You've removed your M4A1 Flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv5) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1flashlightv5')
                                ESX.ShowNotification("You've removed your M4A1 Flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv5)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv6) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1flashlightv6')
                                ESX.ShowNotification("You've removed your M4A1 Flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1flashlightv6)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scope) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1scope')
                                ESX.ShowNotification("You've removed your M4A1 Optics")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scope)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scopev2) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1scopev2')
                                ESX.ShowNotification("You've removed your M4A1 Optics")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scopev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scopev3) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1scopev3')
                                ESX.ShowNotification("You've removed your M4A1 Optics")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scopev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scopev4) then
                                TriggerServerEvent('esx_component:giveBack', 'm4a1scopev4')
                                ESX.ShowNotification("You've removed your M4A1 Optics")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.m4a1scopev4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazine) then
                                TriggerServerEvent('esx_component:giveBack', 'g17magazine')
                                ESX.ShowNotification("You've removed your extended magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazine)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazinev2) then
                                TriggerServerEvent('esx_component:giveBack', 'g17magazinev2')
                                ESX.ShowNotification("You've removed your extended magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazinev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazinev3) then
                                TriggerServerEvent('esx_component:giveBack', 'g17magazinev3')
                                ESX.ShowNotification("You've removed your extended magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazinev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazinev4) then
                                TriggerServerEvent('esx_component:giveBack', 'g17magazinev4')
                                ESX.ShowNotification("You've removed your extended magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17magazinev4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlight) then
                                TriggerServerEvent('esx_component:giveBack', 'g17flashlight')
                                ESX.ShowNotification("You've removed your TLR")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlight)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlightv2) then
                                TriggerServerEvent('esx_component:giveBack', 'g17flashlightv2')
                                ESX.ShowNotification("You've removed your TLR2")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlightv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlightv3) then
                                TriggerServerEvent('esx_component:giveBack', 'g17flashlightv3')
                                ESX.ShowNotification("You've removed your TLR3")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlightv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlightv4) then
                                TriggerServerEvent('esx_component:giveBack', 'g17flashlightv4')
                                ESX.ShowNotification("You've removed your TLR4")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17flashlightv4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slide) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slide')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slide)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev2) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev2')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev3) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev3')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev4) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev4')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev5) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev5')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev5)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev6) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev6')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev6)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev7) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev7')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev7)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev8) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev8')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev8)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev9) then
                                TriggerServerEvent('esx_component:giveBack', 'g17slidev9')
                                ESX.ShowNotification("You've removed your slide")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17slidev9)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressor) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressor')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressor)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv2) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressorv2')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv3) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressorv3')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv4) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressorv4')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv5) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressorv5')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv5)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv6) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressorv6')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv6)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv7) then
                                TriggerServerEvent('esx_component:giveBack', 'g17suppressorv7')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.g17suppressorv7)
						end
					end
				end
			end
		end
	end
end)