#Made By Fan_Fan_tom
#中途加入遊戲
execute store result score blue.team command run execute if entity @a[team=blue]
execute store result score gold.team command run execute if entity @a[team=gold]
execute if score blue.team command > gold.team command run team join gold @s
execute if score blue.team command <= gold.team command run team join blue @s
xp set @s 0 levels
xp set @s 0 points
gamemode survival @s
tp @s[team=blue] @e[type=marker,tag=spawnpoint,tag=blue,sort=random,limit=1]
tp @s[team=gold] @e[type=marker,tag=spawnpoint,tag=gold,sort=random,limit=1]
effect clear @s
effect give @s slowness 1 100 true
effect give @s jump_boost 1 147 true
effect give @s regeneration 1 4 true
effect give @s saturation 20 87 true
effect give @s weakness 1 100 true
effect give @s blindness 1 100 true
effect give @s invisibility 1 1 true

#give all player basic item
clear @s
function cp2:type/item/wooden_sword
execute if entity @s[team=blue] run function cp2:type/item/blue/leather_armor
execute if entity @s[team=gold] run function cp2:type/item/gold/leather_armor
scoreboard players set @s[gamemode=survival] money 16

tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@s"},{"text":" 中途加入了遊戲","color":"white"}]
scoreboard players reset blue.team command
scoreboard players reset gold.team command
scoreboard players reset @s trigger