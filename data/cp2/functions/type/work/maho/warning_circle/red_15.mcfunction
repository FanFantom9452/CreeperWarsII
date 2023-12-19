#原地旋轉
execute as @e[tag=particle_a] at @s run tp @s ~ ~ ~ ~2 ~

#產生粒子特效
execute rotated as @e[tag=particle_a] positioned ^ ^ ^-15 run particle dust 1 0 0 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]



#記分板 & 停止條件
scoreboard players add t particle_worker 1
execute if score t particle_worker matches ..60 run function cp2:type/work/maho/warning_circle/red_15
execute if score t particle_worker matches 61 as @a[gamemode=adventure,distance=..15] run function cp2:type/work/maho/warning_circle/in_danger_range
execute if score t particle_worker matches 61 run scoreboard players set t particle_worker 0
