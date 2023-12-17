#Made By Fan_Fan_tom
#time 1s

#marker worker
execute as @e[type=marker] at @s run function cp2:type/work/tick_worker/marker_for_time


#吸吸怪無法長大
execute as @e[type=sniffer,tag=mid_monster] run data modify entity @s Age set value -1000
execute as @e[type=sniffer,tag=mid_monster] at @s if entity @a[gamemode=!spectator,distance=..10] run effect give @s glowing 3 0 true

#BOSS強制上仇恨
execute as @e[type=iron_golem,tag=ore_god] at @s if entity @a[gamemode=!spectator,distance=..13] run data modify entity @s AngryAt set from entity @p[gamemode=!spectator,distance=..13] UUID


#苦力怕血量顯示
bossbar set blue_creeper_health players @a
bossbar set gold_creeper_health players @a

#第一階段雙方苦力怕無敵
execute if score 戰爭階段 list matches 1 run scoreboard players set @e[type=creeper,tag=sub_castle_creeper] invincible 25

#第三階段隨機事件
execute if score 戰爭階段 list matches 3.. run scoreboard players add RandomGameEvent command_timer 1
execute if score 戰爭階段 list matches 3.. if score RandomGameEvent command_timer >= Random.Game.Event command run function cp2:type/work/event/worker {min:1,max:2}

#第五階段 苦力怕開始凋零
execute if score 戰爭階段 list matches 5.. run scoreboard players add Creeper.Wither command_timer 1
execute if score 戰爭階段 list matches 5.. if score Creeper.Wither command_timer matches 3.. run scoreboard players add @e[type=creeper,tag=sub_castle_creeper] damage 30
execute if score 戰爭階段 list matches 5.. if score Creeper.Wither command_timer matches 3.. run scoreboard players add @e[type=creeper,tag=main_castle_creeper] damage 40
execute if score 戰爭階段 list matches 5.. if score Creeper.Wither command_timer matches 3.. run scoreboard players reset Creeper.Wither command_timer



#苦力怕回血
scoreboard players add Creeper.Regen command_timer 1
execute if score beacon.2 upgrade.blue matches 1 if score Creeper.Regen command_timer matches 3.. as @e[type=creeper,tag=main_castle_creeper,tag=blue] unless score @s hp = @s maxhp at @s run function cp2:type/work/creeper_regen {team:"blue"}

execute if score beacon.2 upgrade.gold matches 1 if score Creeper.Regen command_timer matches 3.. as @e[type=creeper,tag=main_castle_creeper,tag=gold] unless score @s hp = @s maxhp at @s run function cp2:type/work/creeper_regen {team:"gold"}
execute if score Creeper.Regen command_timer matches 3.. run scoreboard players set Creeper.Regen command_timer 0


#game Time
execute if score Winner.Testfor command matches 1 run scoreboard players add 遊戲時間 list 1
execute if score 遊戲時間 list matches 3 run function cp2:type/work/war_phase/1
execute if score 遊戲時間 list matches 600 run function cp2:type/work/war_phase/2
execute if score 遊戲時間 list matches 1200 run function cp2:type/work/war_phase/3
execute if score 遊戲時間 list matches 1800 run function cp2:type/work/war_phase/4
execute if score 遊戲時間 list matches 2400 run function cp2:type/work/war_phase/5
execute if score 遊戲時間 list matches 3000 run function cp2:type/work/war_phase/6
#Loop
execute if score Function.Status command matches 3 run schedule function cp2:type/time 1s