#Made By Fan_Fan_tom
scoreboard players operation @s kit = @s holding.kit

execute if score @s holding.kit matches 0 run tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":" §f您選擇了 §a平凡人 §f職業","color":"white"}]


execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
function cp2:type/item/ender_chest/clear
function cp2:type/item/ender_chest/kit
execute if score Function.Status command matches 3 run scoreboard players set @s CD.change_kit 600
execute if score Function.Status command matches 3 run function cp2:type/item/ender_chest/atm
clear @s #cp2:all{choose_kit_item:1b}
scoreboard players reset @s holding.kit