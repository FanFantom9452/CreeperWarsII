#Made By Fan_Fan_tom
#存錢
execute store result score @s current.money run data get entity @s Inventory[{Slot:-106b}].Count
tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"已將 ","color":"white"},{"score":{"name":"@s","objective":"current.money"},"bold":true,"underlined":true,"color":"gold"},{"text":" 個火藥存入銀行","color":"white"}]
scoreboard players operation @s money += @s current.money
item replace entity @s weapon.offhand with air
scoreboard players reset @s current.money
playsound block.note_block.pling master @s ~ ~ ~ 1 2 1