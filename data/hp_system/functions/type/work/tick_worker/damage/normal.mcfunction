#Made By Fan_Fan_tom

#input damage and id
scoreboard players set #10 command 10
scoreboard players set #2 command 2
scoreboard players operation @s damage /= #10 command
execute if entity @s[type=creeper,tag=blue] if score shield.1 upgrade.blue matches 1 run scoreboard players operation @s damage -= #2 command
execute if entity @s[type=creeper,tag=gold] if score shield.1 upgrade.gold matches 1 run scoreboard players operation @s damage -= #2 command
execute store result storage hp_system:damage damage int 1 run scoreboard players get @s damage
execute anchored eyes run function hp_system:type/work/tick_worker/damage/show_normal_atk_text with storage hp_system:damage

scoreboard players operation @s hp -= @s damage

#苦力怕受傷血量顯示 / 苦力怕受傷通知
#blue
execute if entity @s[type=creeper,tag=blue,tag=sub_castle_creeper,nbt={HurtTime:0s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"sub_castle_creeper",HurtTime:"0"}
execute if entity @s[type=creeper,tag=blue,tag=main_castle_creeper,nbt={HurtTime:0s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"main_castle_creeper",HurtTime:"0"}
#gold
execute if entity @s[type=creeper,tag=gold,tag=sub_castle_creeper,nbt={HurtTime:0s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"sub_castle_creeper",HurtTime:"0"}
execute if entity @s[type=creeper,tag=gold,tag=main_castle_creeper,nbt={HurtTime:0s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"main_castle_creeper",HurtTime:"0"}
#苦力怕受傷血量顯示 / 苦力怕受傷通知
#blue
execute if entity @s[type=creeper,tag=blue,tag=sub_castle_creeper,nbt={HurtTime:10s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"sub_castle_creeper",HurtTime:"10"}
execute if entity @s[type=creeper,tag=blue,tag=main_castle_creeper,nbt={HurtTime:10s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"main_castle_creeper",HurtTime:"10"}
#gold
execute if entity @s[type=creeper,tag=gold,tag=sub_castle_creeper,nbt={HurtTime:10s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"sub_castle_creeper",HurtTime:"10"}
execute if entity @s[type=creeper,tag=gold,tag=main_castle_creeper,nbt={HurtTime:10s}] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"main_castle_creeper",HurtTime:"10"}




#hp_bar live time
scoreboard players set @s[tag=!hp_bar_showed] hp_bar_timer 100
execute if entity @s[tag=!hp_bar_showed] store result storage hp_system:hp_bar id int 1 run scoreboard players get @s id
execute if entity @s[tag=!hp_bar_showed] run function hp_system:type/work/tick_worker/hp_bar/summon_normal with storage hp_system:hp_bar
tag @s[tag=!hp_bar_showed] add hp_bar_showed

#update hp_bar
execute store result storage hp_system:hp_update tmp_hp int 1 run scoreboard players get @s hp
execute store result storage hp_system:hp_update tmp_maxhp int 1 run scoreboard players get @s maxhp
execute store result storage hp_system:hp_update id int 1 run scoreboard players get @s id
function hp_system:type/work/tick_worker/hp_bar/operation_20 with storage hp_system:hp_update



#reset
scoreboard players reset @s damage

