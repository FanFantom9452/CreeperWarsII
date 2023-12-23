#Made By Fan_Fan_tom
advancement revoke @s only cp2:open_ender_chest

execute if score Function.Status command matches 2 run function cp2:type/item/ender_chest/clear
execute if score Function.Status command matches 2 run function cp2:type/item/ender_chest/kit

execute if score Function.Status command matches 3 run function cp2:type/item/ender_chest/clear
execute if score Function.Status command matches 3 run function cp2:type/item/ender_chest/atm
execute if score Function.Status command matches 3 if score @s CD.change_kit matches 0 run function cp2:type/item/ender_chest/kit