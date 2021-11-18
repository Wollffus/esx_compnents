local ESX = nil

TriggerEvent('esx:getSharedObject', function( obj ) ESX = obj end)
ESX.RegisterUsableItem('m18suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18suppressor')
	xPlayer.removeInventoryItem('m18suppressor', 1)
end)

ESX.RegisterUsableItem('m18suppressorv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18suppressorv2')
	xPlayer.removeInventoryItem('m18suppressorv2', 1)
end)

ESX.RegisterUsableItem('m18suppressorv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18suppressorv3')
	xPlayer.removeInventoryItem('m18suppressorv3', 1)
end)

ESX.RegisterUsableItem('m18flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18flashlight')
	xPlayer.removeInventoryItem('m18flashlight', 1)
end)

ESX.RegisterUsableItem('m18flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18flashlightv2')
	xPlayer.removeInventoryItem('m18flashlightv2', 1)
end)

ESX.RegisterUsableItem('m18flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18flashlightv3')
	xPlayer.removeInventoryItem('m18flashlightv3', 1)
end)

ESX.RegisterUsableItem('m18scope', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18scope')
	xPlayer.removeInventoryItem('m18scope', 1)
end)

ESX.RegisterUsableItem('m18scopev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18scopev2')
	xPlayer.removeInventoryItem('m18scopev2', 1)
end)

ESX.RegisterUsableItem('m18scopev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18scopev3')
	xPlayer.removeInventoryItem('m18scopev3', 1)
end)

ESX.RegisterUsableItem('m18extended_magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm18extended_magazine')
	xPlayer.removeInventoryItem('m18extended_magazine', 1)
end)

ESX.RegisterUsableItem('m9a3magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm9a3magazine')
	xPlayer.removeInventoryItem('m9a3magazine', 1)
end)

ESX.RegisterUsableItem('m4a1barrel', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1barrel')
	xPlayer.removeInventoryItem('m4a1barrel', 1)
end)

ESX.RegisterUsableItem('m4a1barrelv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1barrelv2')
	xPlayer.removeInventoryItem('m4a1barrelv2', 1)
end)

ESX.RegisterUsableItem('m4a1barrelv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1barrelv3')
	xPlayer.removeInventoryItem('m4a1barrelv3', 1)
end)

ESX.RegisterUsableItem('m4a1barrelv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1barrelv4')
	xPlayer.removeInventoryItem('m4a1barrelv4', 1)
end)

ESX.RegisterUsableItem('m4a1magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1magazine')
	xPlayer.removeInventoryItem('m4a1magazine', 1)
end)

ESX.RegisterUsableItem('m4a1magazinev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1magazinev2')
	xPlayer.removeInventoryItem('m4a1magazinev2', 1)
end)

ESX.RegisterUsableItem('m4a1magazinev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1magazinev3')
	xPlayer.removeInventoryItem('m4a1magazinev3', 1)
end)

ESX.RegisterUsableItem('m4a1magazinev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1magazinev4')
	xPlayer.removeInventoryItem('m4a1magazinev4', 1)
end)

ESX.RegisterUsableItem('m4a1flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1flashlight')
	xPlayer.removeInventoryItem('m4a1flashlight', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1flashlightv2')
	xPlayer.removeInventoryItem('m4a1flashlightv2', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1flashlightv3')
	xPlayer.removeInventoryItem('m4a1flashlightv3', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1flashlightv4')
	xPlayer.removeInventoryItem('m4a1flashlightv4', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1flashlightv5')
	xPlayer.removeInventoryItem('m4a1flashlightv5', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'm4a1flashlightv6')
	xPlayer.removeInventoryItem('m4a1flashlightv6', 1)
end)

ESX.RegisterUsableItem('g17magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17magazine')
	xPlayer.removeInventoryItem('g17magazine', 1)
end)

ESX.RegisterUsableItem('g17magazinev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17magazinev2')
	xPlayer.removeInventoryItem('g17magazinev2', 1)
end)

ESX.RegisterUsableItem('g17magazinev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17magazinev3')
	xPlayer.removeInventoryItem('g17magazinev3', 1)
end)

ESX.RegisterUsableItem('g17magazinev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17magazinev4')
	xPlayer.removeInventoryItem('g17magazinev4', 1)
end)

ESX.RegisterUsableItem('g17flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17flashlight')
	xPlayer.removeInventoryItem('g17flashlight', 1)
end)

ESX.RegisterUsableItem('g17flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17flashlightv2')
	xPlayer.removeInventoryItem('g17flashlightv2', 1)
end)

ESX.RegisterUsableItem('g17flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17flashlightv3')
	xPlayer.removeInventoryItem('g17flashlightv3', 1)
end)

ESX.RegisterUsableItem('g17flashlightv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17flashlightv4')
	xPlayer.removeInventoryItem('g17flashlightv4', 1)
end)

ESX.RegisterUsableItem('g17slide', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slide')
	xPlayer.removeInventoryItem('g17slide', 1)
end)

ESX.RegisterUsableItem('g17slidev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev2')
	xPlayer.removeInventoryItem('g17slidev2', 1)
end)

ESX.RegisterUsableItem('g17slidev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev3')
	xPlayer.removeInventoryItem('g17slidev3', 1)
end)

ESX.RegisterUsableItem('g17slidev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev4')
	xPlayer.removeInventoryItem('g17slidev4', 1)
end)

ESX.RegisterUsableItem('g17slidev5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev5')
	xPlayer.removeInventoryItem('g17slidev5', 1)
end)

ESX.RegisterUsableItem('g17slidev6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev6')
	xPlayer.removeInventoryItem('g17slidev6', 1)
end)

ESX.RegisterUsableItem('g17slidev7', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev7')
	xPlayer.removeInventoryItem('g17slidev7', 1)
end)

ESX.RegisterUsableItem('g17slidev8', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev8')
	xPlayer.removeInventoryItem('g17slidev8', 1)
end)

ESX.RegisterUsableItem('g17slidev9', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17slidev9')
	xPlayer.removeInventoryItem('g17slidev9', 1)
end)

ESX.RegisterUsableItem('g17suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressor')
	xPlayer.removeInventoryItem('g17suppressor', 1)
end)

ESX.RegisterUsableItem('g17suppressorv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressorv2')
	xPlayer.removeInventoryItem('g17suppressorv2', 1)
end)

ESX.RegisterUsableItem('g17suppressorv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressorv3')
	xPlayer.removeInventoryItem('g17suppressorv3', 1)
end)

ESX.RegisterUsableItem('g17suppressorv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressorv4')
	xPlayer.removeInventoryItem('g17suppressorv4', 1)
end)

ESX.RegisterUsableItem('g17suppressorv5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressorv5')
	xPlayer.removeInventoryItem('g17suppressorv5', 1)
end)

ESX.RegisterUsableItem('g17suppressorv6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressorv6')
	xPlayer.removeInventoryItem('g17suppressorv6', 1)
end)

ESX.RegisterUsableItem('g17suppressorv7', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_component:use', source, 'g17suppressorv7')
	xPlayer.removeInventoryItem('g17suppressorv7', 1)
end)

-- Return Server Event, leave at bottom I suppose
RegisterServerEvent('esx_component:giveBack')
AddEventHandler('esx_component:giveBack', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addInventoryItem(item, 1)
end)