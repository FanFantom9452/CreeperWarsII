#Made By Fan_Fan_tom
#苦力怕運作

#苦力怕受傷血量顯示 / 苦力怕受傷通知
#execute if entity @s[nbt={HurtTime:10s}] run function cp2:type/work/tick_worker/all_creeper_health_bossbar_update {HurtTime:"10s"}




#苦力怕太靠近反擊
execute if entity @s[tag=blue] run damage @a[gamemode=!spectator,team=gold,distance=..1,sort=nearest,limit=1] 6 mob_attack by @s
execute if entity @s[tag=gold] run damage @a[gamemode=!spectator,team=blue,distance=..1,sort=nearest,limit=1] 6 mob_attack by @s

#creeper look someone
execute facing entity @a[gamemode=!spectator,sort=nearest,distance=..5,limit=1] feet run tp @s ~ ~ ~ ~ ~

#主堡苦力怕無敵
execute if entity @s[tag=sub_castle_creeper,tag=blue] run scoreboard players set @e[type=creeper,tag=main_castle_creeper,tag=blue] invincible 2
execute if entity @s[tag=sub_castle_creeper,tag=gold] run scoreboard players set @e[type=creeper,tag=main_castle_creeper,tag=gold] invincible 2










