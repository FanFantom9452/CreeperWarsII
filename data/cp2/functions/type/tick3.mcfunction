#Made By Fan_Fan_tom
#tick
#所有玩家運作 / 殺人 / 死亡 / 統計 / 團隊羊毛
execute as @a at @s run function cp2:type/work/tick_worker/player_for_tick
#顯示玩家人數
execute store result score 玩家人數 list if entity @a[team=!spec]


#marker worker
execute as @e[type=marker] at @s run function cp2:type/work/tick_worker/marker_for_tick

#冷卻顯示
scoreboard players add @e[type=text_display,tag=text] command_timer 1
execute as @e[type=text_display,tag=close_to_player] at @s facing entity @p[gamemode=!spectator,distance=..6] feet run tp @s ^ ^0.05 ^0.05 ~ ~
execute as @e[type=text_display,tag=anim1,scores={command_timer=1..5}] at @s run tp @s ~ ~0.05 ~
execute as @e[type=text_display,tag=anim1,scores={command_timer=6..10}] at @s run tp @s ~ ~0.025 ~
execute as @e[type=text_display,tag=anim1,scores={command_timer=11..20}] at @s run tp @s ~ ~0.0125 ~
kill @e[type=text_display,tag=text,scores={command_timer=20..}]



#苦力怕運作
execute as @e[type=creeper] at @s run function cp2:type/work/tick_worker/creeper_for_tick


#雪球運作
execute as @e[type=snowball] at @s run function cp2:type/work/tick_worker/snowball_for_tick

#BOSS FIGHT
execute as @e[type=iron_golem,tag=boss] at @s run function cp2:type/work/boss/ore_god_work
execute as @e[type=ravager,tag=boss] at @s run function cp2:type/work/boss/isar_work



#商人重製
execute if entity @e[type=witch,name=!,tag=] run function cp2:type/summon/shop_reset
execute unless entity @e[type=villager,tag=shop] run function cp2:type/summon/shop_reset
#villager look someone
execute as @e[type=villager,tag=shop] at @s facing entity @a[gamemode=!spectator,sort=nearest,distance=..5,limit=1] feet run tp @s ~ ~ ~ ~ ~


#最終階段 苦力怕快速凋零
execute if score Winner.Testfor command matches 1 if score 戰爭階段 list matches 6 run function cp2:type/work/war_phase/6_working



#勝利判斷
execute if score Winner.Testfor command matches 1 unless entity @e[type=creeper,tag=main_castle_creeper,tag=blue] unless entity @e[type=creeper,tag=main_castle_creeper,tag=gold] run function cp2:type/work/winner/tie
execute if score Winner.Testfor command matches 1 if entity @e[type=creeper,tag=main_castle_creeper,tag=blue] unless entity @e[type=creeper,tag=main_castle_creeper,tag=gold] run function cp2:type/work/winner/blue
execute if score Winner.Testfor command matches 1 unless entity @e[type=creeper,tag=main_castle_creeper,tag=blue] if entity @e[type=creeper,tag=main_castle_creeper,tag=gold] run function cp2:type/work/winner/gold

#reset sneak time score
scoreboard players remove @a[scores={sneak.time=1..}] sneak.time 1

#清除掉落物
kill @e[type=item,nbt={Item:{tag:{clear:1b}}}]
#Loop
execute if score Function.Status command matches 3 run schedule function cp2:type/tick3 1t