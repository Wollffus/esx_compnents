local ESX = nil

TriggerEvent('esx:getSharedObject', function( obj ) ESX = obj end)

-- Add-On Weapon Components
ESX.RegisterUsableItem('m18suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18suppressor')
	xPlayer.removeInventoryItem('m18suppressor', 1)
end)

ESX.RegisterUsableItem('m18suppressorv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18suppressorv2')
	xPlayer.removeInventoryItem('m18suppressorv2', 1)
end)

ESX.RegisterUsableItem('m18suppressorv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18suppressorv3')
	xPlayer.removeInventoryItem('m18suppressorv3', 1)
end)

ESX.RegisterUsableItem('m18flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18flashlight')
	xPlayer.removeInventoryItem('m18flashlight', 1)
end)

ESX.RegisterUsableItem('m18flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18flashlightv2')
	xPlayer.removeInventoryItem('m18flashlightv2', 1)
end)

ESX.RegisterUsableItem('m18flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18flashlightv3')
	xPlayer.removeInventoryItem('m18flashlightv3', 1)
end)

ESX.RegisterUsableItem('m18scope', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18scope')
	xPlayer.removeInventoryItem('m18scope', 1)
end)

ESX.RegisterUsableItem('m18scopev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18scopev2')
	xPlayer.removeInventoryItem('m18scopev2', 1)
end)

ESX.RegisterUsableItem('m18scopev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18scopev3')
	xPlayer.removeInventoryItem('m18scopev3', 1)
end)

ESX.RegisterUsableItem('m18extended_magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm18extended_magazine')
	xPlayer.removeInventoryItem('m18extended_magazine', 1)
end)

ESX.RegisterUsableItem('m9a3magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm9a3magazine')
	xPlayer.removeInventoryItem('m9a3magazine', 1)
end)

ESX.RegisterUsableItem('m4a1barrel', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1barrel')
	xPlayer.removeInventoryItem('m4a1barrel', 1)
end)

ESX.RegisterUsableItem('m4a1barrelv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1barrelv2')
	xPlayer.removeInventoryItem('m4a1barrelv2', 1)
end)

ESX.RegisterUsableItem('m4a1barrelv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1barrelv3')
	xPlayer.removeInventoryItem('m4a1barrelv3', 1)
end)

ESX.RegisterUsableItem('m4a1barrelv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1barrelv4')
	xPlayer.removeInventoryItem('m4a1barrelv4', 1)
end)

ESX.RegisterUsableItem('m4a1magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1magazine')
	xPlayer.removeInventoryItem('m4a1magazine', 1)
end)

ESX.RegisterUsableItem('m4a1magazinev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1magazinev2')
	xPlayer.removeInventoryItem('m4a1magazinev2', 1)
end)

ESX.RegisterUsableItem('m4a1magazinev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1magazinev3')
	xPlayer.removeInventoryItem('m4a1magazinev3', 1)
end)

ESX.RegisterUsableItem('m4a1magazinev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1magazinev4')
	xPlayer.removeInventoryItem('m4a1magazinev4', 1)
end)

ESX.RegisterUsableItem('m4a1flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1flashlight')
	xPlayer.removeInventoryItem('m4a1flashlight', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1flashlightv2')
	xPlayer.removeInventoryItem('m4a1flashlightv2', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1flashlightv3')
	xPlayer.removeInventoryItem('m4a1flashlightv3', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1flashlightv4')
	xPlayer.removeInventoryItem('m4a1flashlightv4', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1flashlightv5')
	xPlayer.removeInventoryItem('m4a1flashlightv5', 1)
end)

ESX.RegisterUsableItem('m4a1flashlightv6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'm4a1flashlightv6')
	xPlayer.removeInventoryItem('m4a1flashlightv6', 1)
end)

ESX.RegisterUsableItem('g17magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17magazine')
	xPlayer.removeInventoryItem('g17magazine', 1)
end)

ESX.RegisterUsableItem('g17magazinev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17magazinev2')
	xPlayer.removeInventoryItem('g17magazinev2', 1)
end)

ESX.RegisterUsableItem('g17magazinev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17magazinev3')
	xPlayer.removeInventoryItem('g17magazinev3', 1)
end)

ESX.RegisterUsableItem('g17magazinev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17magazinev4')
	xPlayer.removeInventoryItem('g17magazinev4', 1)
end)

ESX.RegisterUsableItem('g17flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17flashlight')
	xPlayer.removeInventoryItem('g17flashlight', 1)
end)

ESX.RegisterUsableItem('g17flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17flashlightv2')
	xPlayer.removeInventoryItem('g17flashlightv2', 1)
end)

ESX.RegisterUsableItem('g17flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17flashlightv3')
	xPlayer.removeInventoryItem('g17flashlightv3', 1)
end)

ESX.RegisterUsableItem('g17flashlightv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17flashlightv4')
	xPlayer.removeInventoryItem('g17flashlightv4', 1)
end)

ESX.RegisterUsableItem('g17slide', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slide')
	xPlayer.removeInventoryItem('g17slide', 1)
end)

ESX.RegisterUsableItem('g17slidev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev2')
	xPlayer.removeInventoryItem('g17slidev2', 1)
end)

ESX.RegisterUsableItem('g17slidev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev3')
	xPlayer.removeInventoryItem('g17slidev3', 1)
end)

ESX.RegisterUsableItem('g17slidev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev4')
	xPlayer.removeInventoryItem('g17slidev4', 1)
end)

ESX.RegisterUsableItem('g17slidev5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev5')
	xPlayer.removeInventoryItem('g17slidev5', 1)
end)

ESX.RegisterUsableItem('g17slidev6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev6')
	xPlayer.removeInventoryItem('g17slidev6', 1)
end)

ESX.RegisterUsableItem('g17slidev7', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev7')
	xPlayer.removeInventoryItem('g17slidev7', 1)
end)

ESX.RegisterUsableItem('g17slidev8', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev8')
	xPlayer.removeInventoryItem('g17slidev8', 1)
end)

ESX.RegisterUsableItem('g17slidev9', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17slidev9')
	xPlayer.removeInventoryItem('g17slidev9', 1)
end)

ESX.RegisterUsableItem('g17suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressor')
	xPlayer.removeInventoryItem('g17suppressor', 1)
end)

ESX.RegisterUsableItem('g17suppressorv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressorv2')
	xPlayer.removeInventoryItem('g17suppressorv2', 1)
end)

ESX.RegisterUsableItem('g17suppressorv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressorv3')
	xPlayer.removeInventoryItem('g17suppressorv3', 1)
end)

ESX.RegisterUsableItem('g17suppressorv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressorv4')
	xPlayer.removeInventoryItem('g17suppressorv4', 1)
end)

ESX.RegisterUsableItem('g17suppressorv5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressorv5')
	xPlayer.removeInventoryItem('g17suppressorv5', 1)
end)

ESX.RegisterUsableItem('g17suppressorv6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressorv6')
	xPlayer.removeInventoryItem('g17suppressorv6', 1)
end)

ESX.RegisterUsableItem('g17suppressorv7', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'g17suppressorv7')
	xPlayer.removeInventoryItem('g17suppressorv7', 1)
end)

ESX.RegisterUsableItem('r870barrel', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrel')
	xPlayer.removeInventoryItem('r870barrel', 1)
end)

ESX.RegisterUsableItem('r870barrelv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrelv2')
	xPlayer.removeInventoryItem('r870barrelv2', 1)
end)

ESX.RegisterUsableItem('r870barrelv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrelv3')
	xPlayer.removeInventoryItem('r870barrelv3', 1)
end)

ESX.RegisterUsableItem('r870barrelv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrelv4')
	xPlayer.removeInventoryItem('r870barrelv4', 1)
end)

ESX.RegisterUsableItem('r870barrelv5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrelv5')
	xPlayer.removeInventoryItem('r870barrelv5', 1)
end)

ESX.RegisterUsableItem('r870barrelv6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrelv6')
	xPlayer.removeInventoryItem('r870barrelv6', 1)
end)

ESX.RegisterUsableItem('r870barrelv7', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870barrelv7')
	xPlayer.removeInventoryItem('r870barrelv7', 1)
end)

ESX.RegisterUsableItem('r870magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870magazine')
	xPlayer.removeInventoryItem('r870magazine', 1)
end)

ESX.RegisterUsableItem('r870magazinev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870magazinev2')
	xPlayer.removeInventoryItem('r870magazinev2', 1)
end)

ESX.RegisterUsableItem('r870magazinev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870magazinev3')
	xPlayer.removeInventoryItem('r870magazinev3', 1)
end)

ESX.RegisterUsableItem('r870handguard', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870handguard')
	xPlayer.removeInventoryItem('r870handguard', 1)
end)

ESX.RegisterUsableItem('r870handguardv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870handguardv2')
	xPlayer.removeInventoryItem('r870handguardv2', 1)
end)

ESX.RegisterUsableItem('r870handguardv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870handguardv3')
	xPlayer.removeInventoryItem('r870handguardv3', 1)
end)

ESX.RegisterUsableItem('r870scope', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870scope')
	xPlayer.removeInventoryItem('r870scope', 1)
end)

ESX.RegisterUsableItem('r870scopev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870scopev2')
	xPlayer.removeInventoryItem('r870scopev2', 1)
end)

ESX.RegisterUsableItem('r870scopev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870scopev3')
	xPlayer.removeInventoryItem('r870scopev3', 1)
end)

ESX.RegisterUsableItem('r870scopev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870scopev4')
	xPlayer.removeInventoryItem('r870scopev4', 1)
end)

ESX.RegisterUsableItem('r870stock', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870stock')
	xPlayer.removeInventoryItem('r870stock', 1)
end)

ESX.RegisterUsableItem('r870stockv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870stockv2')
	xPlayer.removeInventoryItem('r870stockv2', 1)
end)

ESX.RegisterUsableItem('r870stockv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870stockv3')
	xPlayer.removeInventoryItem('r870stockv3', 1)
end)

ESX.RegisterUsableItem('r870stockv4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870stockv4')
	xPlayer.removeInventoryItem('r870stockv4', 1)
end)

ESX.RegisterUsableItem('r870stockv5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870stockv5')
	xPlayer.removeInventoryItem('r870stockv5', 1)
end)

ESX.RegisterUsableItem('r870stockv6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'r870stockv6')
	xPlayer.removeInventoryItem('r870stockv6', 1)
end)

ESX.RegisterUsableItem('sr25suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25suppressor')
	xPlayer.removeInventoryItem('sr25suppressor', 1)
end)

ESX.RegisterUsableItem('sr25suppressorv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25suppressorv2')
	xPlayer.removeInventoryItem('sr25suppressorv2', 1)
end)

ESX.RegisterUsableItem('sr25suppressorv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25suppressorv3')
	xPlayer.removeInventoryItem('sr25suppressorv3', 1)
end)

ESX.RegisterUsableItem('sr25flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25flashlight')
	xPlayer.removeInventoryItem('sr25flashlight', 1)
end)

ESX.RegisterUsableItem('sr25flashlightv2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25flashlightv2')
	xPlayer.removeInventoryItem('sr25flashlightv2', 1)
end)

ESX.RegisterUsableItem('sr25flashlightv3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25flashlightv3')
	xPlayer.removeInventoryItem('sr25flashlightv3', 1)
end)

ESX.RegisterUsableItem('sr25magazine', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25magazine')
	xPlayer.removeInventoryItem('sr25magazine', 1)
end)

ESX.RegisterUsableItem('sr25magazinev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25magazinev2')
	xPlayer.removeInventoryItem('sr25magazinev2', 1)
end)

ESX.RegisterUsableItem('sr25magazinev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25magazinev3')
	xPlayer.removeInventoryItem('sr25magazinev3', 1)
end)

ESX.RegisterUsableItem('sr25scope', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scope')
	xPlayer.removeInventoryItem('sr25scope', 1)
end)

ESX.RegisterUsableItem('sr25scopev2', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev2')
	xPlayer.removeInventoryItem('sr25scopev2', 1)
end)

ESX.RegisterUsableItem('sr25scopev3', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev3')
	xPlayer.removeInventoryItem('sr25scopev3', 1)
end)

ESX.RegisterUsableItem('sr25scopev4', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev4')
	xPlayer.removeInventoryItem('sr25scopev4', 1)
end)

ESX.RegisterUsableItem('sr25scopev5', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev5')
	xPlayer.removeInventoryItem('sr25scopev5', 1)
end)

ESX.RegisterUsableItem('sr25scopev6', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev6')
	xPlayer.removeInventoryItem('sr25scopev6', 1)
end)

ESX.RegisterUsableItem('sr25scopev8', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev8')
	xPlayer.removeInventoryItem('sr25scopev8', 1)
end)

ESX.RegisterUsableItem('sr25scopev9', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev9')
	xPlayer.removeInventoryItem('sr25scopev9', 1)
end)

ESX.RegisterUsableItem('sr25scopev10', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev10')
	xPlayer.removeInventoryItem('sr25scopev10', 1)
end)

ESX.RegisterUsableItem('sr25scopev11', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev11')
	xPlayer.removeInventoryItem('sr25scopev11', 1)
end)

ESX.RegisterUsableItem('sr25scopev12', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'sr25scopev12')
	xPlayer.removeInventoryItem('sr25scopev12', 1)
end)
-- Vanilla Weapon Components

ESX.RegisterUsableItem('suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'suppressor')
	xPlayer.removeInventoryItem('suppressor', 1)
end)

ESX.RegisterUsableItem('flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'flashlight')
	xPlayer.removeInventoryItem('flashlight', 1)
end)

ESX.RegisterUsableItem('grip', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'grip')
	xPlayer.removeInventoryItem('grip', 1)
end)

ESX.RegisterUsableItem('skin', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_components:use', source, 'skin')
	xPlayer.removeInventoryItem('yusuf', 1)
end)

-- Return Server Event, leave at bottom I suppose
RegisterServerEvent('esx_components:giveBack')
AddEventHandler('esx_components:giveBack', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addInventoryItem(item, 1)
end)
