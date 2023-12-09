#Made By Fan_Fan_tom
#start countdown
tag @a remove admin
schedule function cp2:type/start/clear_admin_page 1t
schedule function cp2:type/start/5 1s
schedule function cp2:type/start/4 2s
schedule function cp2:type/start/3 3s
schedule function cp2:type/start/2 4s
schedule function cp2:type/start/1 5s
schedule function cp2:type/start/start 6s

#重置進度
advancement revoke @a only cp2:player_hurt_llama
advancement revoke @a only cp2:player_hurt_sniffer

#start time
gamerule doDaylightCycle true
time set 0
#reset score
scoreboard players set 遊戲時間 list 0
scoreboard players set 戰爭階段 list 0
scoreboard players reset * kill
scoreboard players reset * death
scoreboard players reset * death_CD
scoreboard players reset * command_timer
scoreboard players reset * final.kill
scoreboard players reset * final.death
scoreboard players reset * final.atkCrp
scoreboard players reset * final.atkAll
scoreboard players reset * final.defAll

scoreboard players reset * tmp.atkDmg
scoreboard players reset * tmp.atkDmg2
scoreboard players reset * tmp.defDmg
scoreboard players reset * tmp.defDmg2
scoreboard players reset * tmp.defDmg3


#basic setting
xp set @a 0 levels
xp set @a 0 points
gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]
tp @a[team=blue] @e[type=marker,tag=spawnpoint,tag=blue,sort=random,limit=1]
tp @a[team=gold] @e[type=marker,tag=spawnpoint,tag=gold,sort=random,limit=1]
effect clear @a
effect give @a slowness 6 100 true
effect give @a jump_boost 6 147 true
effect give @a regeneration 6 4 true
effect give @a saturation 20 87 true
effect give @a weakness 6 100 true
effect give @a blindness 6 100 true
effect give @a invisibility 6 1 true

#關閉偵測勝利
scoreboard players set Winner.Testfor command 0
function cp2:type/status/fighting

#give all player basic item
clear @a
execute as @a run function cp2:type/item/wooden_sword
execute as @a[team=blue] run function cp2:type/item/blue/leather_armor
execute as @a[team=gold] run function cp2:type/item/gold/leather_armor
scoreboard players set @a[gamemode=survival] money 16


#summon creeper
forceload remove all
execute as @e[type=marker,tag=sub_castle_creeper] at @s run forceload add ~ ~
execute as @e[type=marker,tag=main_castle_creeper] at @s run forceload add ~ ~
kill @e[type=creeper,tag=main_castle_creeper]
execute as @e[type=marker,tag=main_castle_creeper,tag=blue] at @s run function cp2:type/summon/blue/main_castle_creeper
execute as @e[type=marker,tag=main_castle_creeper,tag=gold] at @s run function cp2:type/summon/gold/main_castle_creeper
kill @e[type=creeper,tag=sub_castle_creeper]
execute as @e[type=marker,tag=sub_castle_creeper,tag=blue] at @s run function cp2:type/summon/blue/sub_castle_creeper
execute as @e[type=marker,tag=sub_castle_creeper,tag=gold] at @s run function cp2:type/summon/gold/sub_castle_creeper

#刷新商人
function cp2:type/summon/shop_reset

#礦物重生
execute at @e[type=marker,tag=gold_ore] run setblock ~ ~ ~ gold_ore
execute at @e[type=marker,tag=emerald_ore] run setblock ~ ~ ~ emerald_ore

#野怪重生
execute at @e[type=marker,tag=wild_monster] run function cp2:type/summon/wild_monster

#吸吸怪重生
execute at @e[type=marker,tag=mid] run function cp2:type/summon/mid_monster




#額外指令包
function add_pack:init


