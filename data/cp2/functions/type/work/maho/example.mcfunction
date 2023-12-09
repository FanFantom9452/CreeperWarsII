#原地旋轉
execute as @e[tag=particle_a] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=particle_b] at @s run tp @s ~ ~ ~ ~178 ~
execute as @e[tag=particle_c] at @s run tp @s ~ ~ ~ ~-3 ~

#產生粒子特效
execute rotated as @e[tag=particle_a] positioned ^ ^ ^1.6 rotated as @e[tag=particle_b] positioned ^ ^ ^0.8 rotated as @e[tag=particle_c] positioned ^ ^ ^0.24 run particle flame ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]




#記分板 & 停止條件
scoreboard players add t particle_worker 1
execute if score t particle_worker matches ..50 run function fantomsmp:type/work/maho/example
execute if score t particle_worker matches 51 run scoreboard players set t particle_worker 0