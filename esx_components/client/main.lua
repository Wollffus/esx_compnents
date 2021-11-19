local ESX = nil
local weapons = {
    -- Add-On Weapon Components
    [GetHashKey('weapon_sig')] = { m18suppressor = GetHashKey('COMPONENT_SIG_SUPP_01'),  m18suppressorv2 = GetHashKey('COMPONENT_SIG_SUPP_02'), m18suppressorv3 = GetHashKey('COMPONENT_SIG_SUPP_03'), m18flashlight = GetHashKey('COMPONENT_SIG_FLSH_01'), m18flashlightv2 = GetHashKey('COMPONENT_SIG_FLSH_02'), m18flashlightv3 = GetHashKey('COMPONENT_SIG_FLSH_03'), m18scope = GetHashKey('COMPONENT_SIG_SCOPE_01'), m18scopev2 = GetHashKey('COMPONENT_SIG_SCOPE_02'), m18scopev3 = GetHashKey('COMPONENT_SIG_SCOPE_03'), m18extended_magazine = GetHashKey('COMPONENT_SIG_CLIP_02') },
    [GetHashKey('weapon_m9')] = { m9a3magazine = GetHashKey('COMPONENT_M9_CLIP_02') },
    [GetHashKey('weapon_m4a1fm')] = { m4a1barrel = GetHashKey('COMPONENT_M4A1FM_BARREL_01'), m4a1barrelv2 = GetHashKey('COMPONENT_M4A1FM_BARREL_02'), m4a1barrelv3 = GetHashKey('COMPONENT_M4A1FM_BARREL_03'), m4a1barrelv4 = GetHashKey('COMPONENT_M4A1FM_BARREL_04'), m4a1magazine = GetHashKey('COMPONENT_M4A1FM_CLIP_01'), m4a1magazinev2 = GetHashKey('COMPONENT_M4A1FM_CLIP_02'), m4a1magazinev3 = GetHashKey('COMPONENT_M4A1FM_CLIP_03'), m4a1magazinev4 = GetHashKey('COMPONENT_M4A1FM_CLIP_04'), m4a1flashlight = GetHashKey('COMPONENT_M4A1FM_FLSH_01'), m4a1flashlightv2 = GetHashKey('COMPONENT_M4A1FM_FLSH_02'), m4a1flashlightv3 = GetHashKey('COMPONENT_M4A1FM_FLSH_03'), m4a1flashlightv4 = GetHashKey('COMPONENT_M4A1FM_FLSH_04'), m4a1flashlightv5 = GetHashKey('COMPONENT_M4A1FM_FLSH_05'), m4a1flashlightv6 = GetHashKey('COMPONENT_M4A1FM_FLSH_06'), m4a1scope = GetHashKey('COMPONENT_M4A1FM_SCOPE_01'), m4a1scopev2 = GetHashKey('COMPONENT_M4A1FM_SCOPE_02'), m4a1scopev3 = GetHashKey('COMPONENT_M4A1FM_SCOPE_03'), m4a1scopev4 = GetHashKey('COMPONENT_M4A1FM_SCOPE_04') },
    [GetHashKey('weapon_glock')] = { g17magazine = GetHashKey('COMPONENT_GLOCK_CLIP_01'), g17magazinev2 = GetHashKey('COMPONENT_GLOCK_CLIP_02'), g17magazinev3 = GetHashKey('COMPONENT_GLOCK_CLIP_03'), g17magazinev4 = GetHashKey('COMPONENT_GLOCK_CLIP_04'), g17flashlight = GetHashKey('COMPONENT_GLOCK_FLSH_01'), g17flashlightv2 = GetHashKey('COMPONENT_GLOCK_FLSH_02'), g17flashlightv3 = GetHashKey('COMPONENT_GLOCK_FLSH_03'), g17flashlightv4 = GetHashKey('COMPONENT_GLOCK_FLSH_04'), g17slide = GetHashKey('COMPONENT_SLIDE_01'), g17slidev2 = GetHashKey('COMPONENT_SLIDE_02'), g17slidev3 = GetHashKey('COMPONENT_SLIDE_03'), g17slidev4 = GetHashKey('COMPONENT_SLIDE_04'), g17slidev5 = GetHashKey('COMPONENT_SLIDE_05'), g17slidev6 = GetHashKey('COMPONENT_SLIDE_06'), g17slidev7 = GetHashKey('COMPONENT_SLIDE_07'), g17slidev8 = GetHashKey('COMPONENT_SLIDE_08'), g17slidev9 = GetHashKey('COMPONENT_SLIDE_09'), g17suppressor = GetHashKey('COMPONENT_SUPP_01'), g17suppressorv2 = GetHashKey('COMPONENT_SUPP_02'), g17suppressorv3 = GetHashKey('COMPONENT_SUPP_03'), g17suppressorv4 = GetHashKey('COMPONENT_SUPP_04'), g17suppressorv5 = GetHashKey('COMPONENT_SUPP_05'), g17suppressorv6 = GetHashKey('COMPONENT_SUPP_06'), g17suppressorv7 = GetHashKey('COMPONENT_SUPP_07') },
    [GetHashKey('weapon_m870')] = { r870barrel = GetHashKey('COMPONENT_m870_BARREL_01'), r870barrelv2 = GetHashKey('COMPONENT_m870_BARREL_02'), r870barrelv3 = GetHashKey('COMPONENT_m870_BARREL_03'), r870barrelv4 = GetHashKey('COMPONENT_m870_BARREL_04'), r870barrelv5 = GetHashKey('COMPONENT_m870_BARREL_05'), r870barrelv6 = GetHashKey('COMPONENT_m870_BARREL_06'), r870barrelv7 = GetHashKey('COMPONENT_m870_BARREL_07'), r870magazine = GetHashKey('COMPONENT_m870_CLIP_01'), r870magazinev2 = GetHashKey('COMPONENT_m870_CLIP_02'), r870magazinev3 = GetHashKey('COMPONENT_m870_CLIP_03'), r870handguard = GetHashKey('COMPONENT_m870_HANDGUARD_01'), r870handguardv2 = GetHashKey('COMPONENT_m870_HANDGUARD_02'), r870handguardv3 = GetHashKey('COMPONENT_m870_HANDGUARD_03'), r870scope = GetHashKey('COMPONENT_m870_SCOPE_01'), r870scopev2 = GetHashKey('COMPONENT_m870_SCOPE_02'), r870scopev3 = GetHashKey('COMPONENT_m870_SCOPE_03'), r870scopev4 = GetHashKey('COMPONENT_m870_SCOPE_04'), r870stock = GetHashKey('COMPONENT_m870_STOCK_01'), r870stockv2 = GetHashKey('COMPONENT_m870_STOCK_02'), r870stockv3 = GetHashKey('COMPONENT_m870_STOCK_03'), r870stockv4 = GetHashKey('COMPONENT_m870_STOCK_04'), r870stockv5 = GetHashKey('COMPONENT_m870_STOCK_05'), r870stockv6 = GetHashKey('COMPONENT_m870_STOCK_06') },
    [GetHashKey('weapon_sr25')] = { sr25suppressor = GetHashKey('COMPONENT_SR25_SUPP_01'), sr25suppressorv2 = GetHashKey('COMPONENT_SR25_SUPP_02'), sr25suppressorv3 = GetHashKey('COMPONENT_SR25_SUPP_03'), sr25flashlight = GetHashKey('COMPONENT_SR25_FLSH_01'), sr25flashlightv2 = GetHashKey('COMPONENT_SR25_FLSH_02'), sr25flashlightv3 = GetHashKey('COMPONENT_SR25_FLSH_03'), sr25magazine = GetHashKey('COMPONENT_SR25_CLIP_01'), sr25magazinev2 = GetHashKey('COMPONENT_SR25_CLIP_02'), sr25magazinev3 = GetHashKey('COMPONENT_SR25_CLIP_03'), sr25scope = GetHashKey('COMPONENT_SR25_SCOPE_01'), sr25scopev2 = GetHashKey('COMPONENT_SR25_SCOPE_02'), sr25scopev3 = GetHashKey('COMPONENT_SR25_SCOPE_03'), sr25scopev4 = GetHashKey('COMPONENT_SR25_SCOPE_04'), sr25scopev5 = GetHashKey('COMPONENT_SR25_SCOPE_05'), sr25scopev6 = GetHashKey('COMPONENT_SR25_SCOPE_06'), sr25scopev7 = GetHashKey('COMPONENT_SR25_SCOPE_07'), sr25scopev8 = GetHashKey('COMPONENT_SR25_SCOPE_08'), sr25scopev9 = GetHashKey('COMPONENT_SR25_SCOPE_09'), sr25scopev10 = GetHashKey('COMPONENT_SR25_SCOPE_10'), sr25scopev11 = GetHashKey('COMPONENT_SR25_SCOPE_11'), sr25scopev12 = GetHashKey('COMPONENT_SR25_SCOPE_12') }
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
								                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrel) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrel')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrel)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv2) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrelv2')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv3) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrelv3')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv4) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrelv4')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv5) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrelv5')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv5)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv6) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrelv6')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv6)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv7) then
                                TriggerServerEvent('esx_components:giveBack', 'r870barrelv7')
                                ESX.ShowNotification("You've removed your barrel attachment")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870barrelv7)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870magazine) then
                                TriggerServerEvent('esx_components:giveBack', 'r870magazine')
                                ESX.ShowNotification("You've removed your barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870magazine)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870magazinev2) then
                                TriggerServerEvent('esx_components:giveBack', 'r870magazinev2')
                                ESX.ShowNotification("You've removed your barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870magazinev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870magazinev3) then
                                TriggerServerEvent('esx_components:giveBack', 'r870magazinev3')
                                ESX.ShowNotification("You've removed your barrel")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870magazinev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870handguard) then
                                TriggerServerEvent('esx_components:giveBack', 'r870handguard')
                                ESX.ShowNotification("You've removed your handguard")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870handguard)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870handguardv2) then
                                TriggerServerEvent('esx_components:giveBack', 'r870handguardv2')
                                ESX.ShowNotification("You've removed your handguard")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870handguardv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870handguardv3) then
                                TriggerServerEvent('esx_components:giveBack', 'r870handguardv3')
                                ESX.ShowNotification("You've removed your handguard")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870handguardv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scope) then
                                TriggerServerEvent('esx_components:giveBack', 'r870scope')
                                ESX.ShowNotification("You've removed your sight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scope)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scopev2) then
                                TriggerServerEvent('esx_components:giveBack', 'r870scopev2')
                                ESX.ShowNotification("You've removed your sight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scopev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scopev3) then
                                TriggerServerEvent('esx_components:giveBack', 'r870scopev3')
                                ESX.ShowNotification("You've removed your sight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scopev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scopev4) then
                                TriggerServerEvent('esx_components:giveBack', 'r870scopev4')
                                ESX.ShowNotification("You've removed your sight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870scopev4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stock) then
                                TriggerServerEvent('esx_components:giveBack', 'r870stock')
                                ESX.ShowNotification("You've removed your stock")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stock)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv2) then
                                TriggerServerEvent('esx_components:giveBack', 'r870stockv2')
                                ESX.ShowNotification("You've removed your stock")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv3) then
                                TriggerServerEvent('esx_components:giveBack', 'r870stockv3')
                                ESX.ShowNotification("You've removed your stock")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv4) then
                                TriggerServerEvent('esx_components:giveBack', 'r870stockv4')
                                ESX.ShowNotification("You've removed your stock")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv5) then
                                TriggerServerEvent('esx_components:giveBack', 'r870stockv5')
                                ESX.ShowNotification("You've removed your stock")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv5)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv6) then
                                TriggerServerEvent('esx_components:giveBack', 'r870stockv6')
                                ESX.ShowNotification("You've removed your stock")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.r870stockv6)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25suppressor) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25suppressor')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25suppressor)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25suppressorv2) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25suppressorv2')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25suppressorv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25suppressorv3) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25suppressorv3')
                                ESX.ShowNotification("You've removed your suppressor")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25suppressorv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25flashlight) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25flashlight')
                                ESX.ShowNotification("You've removed your flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25flashlight)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25flashlightv2) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25flashlightv2')
                                ESX.ShowNotification("You've removed your flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25flashlightv2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25flashlightv3) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25flashlightv3')
                                ESX.ShowNotification("You've removed your flashlight")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25flashlightv3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25magazine) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25magazine')
                                ESX.ShowNotification("You've removed your magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25magazine)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25magazinev2) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25magazinev2')
                                ESX.ShowNotification("You've removed your magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25magazinev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25magazinev3) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25magazinev3')
                                ESX.ShowNotification("You've removed your magazine")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25magazinev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scope) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scope')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scope)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev2) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev2')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev2)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev3) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev3')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev3)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev4) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev4')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev4)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev5) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev5')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev5)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev6) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev6')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev6)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev7) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev7')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev7)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev8) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev8')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev8)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev9) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev9')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev9)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev10) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev10')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev10)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev11) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev11')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev11)
                            elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev12) then
                                TriggerServerEvent('esx_components:giveBack', 'sr25scopev12')
                                ESX.ShowNotification("You've removed your sights")
                                RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.sr25scopev12)								
						end
					end
				end
			end
		end
	end
end)
