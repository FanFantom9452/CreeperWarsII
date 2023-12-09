#Made By Fan_Fan_tom
setblock ~ ~-1 ~ bedrock

#計時
scoreboard players add @s command_timer 1
#Blue 熔爐生產加速 自動給予全隊 Level 2
execute if score furnace.2 upgrade.blue matches 1 if entity @s[tag=blue] run scoreboard players add @s command_timer 1
#Gold 熔爐生產加速 自動給予全隊 Level 2
execute if score furnace.2 upgrade.gold matches 1 if entity @s[tag=gold] run scoreboard players add @s command_timer 1
#生產火藥
execute if score @s command_timer matches 2.. unless entity @a[gamemode=!spectator,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:gunpowder",Count:1b}}
execute if score @s command_timer matches 2.. run scoreboard players add @a[gamemode=!spectator,distance=..3] money 1
execute if score @s command_timer matches 2.. as @a[gamemode=!spectator,distance=..3] run function cp2:type/work/player/actionbar_money


#Blue 熔爐升級 自動給予全隊 Level 1
execute if score furnace.1 upgrade.blue matches 1 if score @s[tag=blue] command_timer matches 2.. run scoreboard players add @a[gamemode=!spectator,team=blue] money 1
#Gold 熔爐升級 自動給予全隊 Level 1
execute if score furnace.1 upgrade.gold matches 1 if score @s[tag=gold] command_timer matches 2.. run scoreboard players add @a[gamemode=!spectator,team=gold] money 1


#第四階段 生產綠寶石
scoreboard players add @s furnace_timer 1
execute if score 戰爭階段 list matches 4.. if score @s furnace_timer matches 30.. unless entity @a[gamemode=!spectator,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute if score 戰爭階段 list matches 4.. if score @s furnace_timer matches 30.. run give @a[gamemode=!spectator,distance=..3] emerald 1

#blue 熔爐升級 生產鑽石 Level 3
execute if score furnace.3 upgrade.blue matches 1 if score @s[tag=blue] furnace_timer matches 30.. unless entity @a[gamemode=!spectator,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute if score furnace.3 upgrade.blue matches 1 if score @s[tag=blue] furnace_timer matches 30.. run give @a[gamemode=!spectator,distance=..3,team=blue] diamond 1
#gold 熔爐升級 生產鑽石 Level 3
execute if score furnace.3 upgrade.gold matches 1 if score @s[tag=gold] furnace_timer matches 30.. unless entity @a[gamemode=!spectator,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute if score furnace.3 upgrade.gold matches 1 if score @s[tag=gold] furnace_timer matches 30.. run give @a[gamemode=!spectator,distance=..3,team=gold] diamond 1

#reset
execute if score @s furnace_timer matches 30.. run scoreboard players reset @s furnace_timer 
execute if score @s command_timer matches 2.. run scoreboard players reset @s command_timer 