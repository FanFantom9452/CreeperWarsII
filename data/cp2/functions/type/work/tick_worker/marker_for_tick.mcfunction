#Made By Fan_Fan_tom


#set all player spawnpoint at spawn CD point
execute if entity @s[tag=spawn_cd_point,tag=blue] run spawnpoint @a[team=blue] ~ ~ ~
execute if entity @s[tag=spawn_cd_point,tag=gold] run spawnpoint @a[team=gold] ~ ~ ~
#spawnpoint protect
execute if entity @s[tag=spawnpoint] at @s run fill ~1 ~ ~1 ~-1 ~2 ~-1 air destroy


#金礦被被挖
execute if entity @s[tag=gold_ore] if block ~ ~ ~ air run setblock ~ ~ ~ bedrock

#綠寶石被挖
execute if entity @s[tag=emerald_ore] if block ~ ~ ~ air run setblock ~ ~ ~ bedrock

#傳送陣 A to B particle
execute if entity @s[tag=teleport_a,tag=blue] if entity @a[distance=..2,gamemode=survival,team=blue,scores={sneak.time=1..}] run function cp2:type/work/maho/teleport
execute if entity @s[tag=teleport_a,tag=gold] if entity @a[distance=..2,gamemode=survival,team=gold,scores={sneak.time=1..}] run function cp2:type/work/maho/teleport

#傳送陣特效
execute if entity @s[tag=teleport_a] run particle portal ~ ~1 ~ 0.5 1.5 0.5 0 10 force @a[distance=2..]



