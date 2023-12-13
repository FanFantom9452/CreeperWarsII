#原地旋轉
execute as @e[tag=particle_a] at @s run tp @s ~ ~ ~ ~0.1 ~
execute as @e[tag=particle_b] at @s run tp @s ~ ~ ~ ~-5 ~


#產生粒子特效
execute rotated as @e[tag=particle_a] positioned ^ ^ ^5 rotated as @e[tag=particle_b] positioned ^ ^ ^1.25 run particle flame ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[tag=particle_a] positioned ^ ^ ^-5 rotated as @e[tag=particle_b] positioned ^ ^ ^1.25 run particle flame ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
#execute rotated as @e[tag=particle_a] positioned ^ ^ ^-5 rotated as @e[tag=particle_b] positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~1 ~ 0 0 10 0.1 0 force @a[distance=..50]


#記分板 & 停止條件
scoreboard players add t particle_worker 1
execute if score t particle_worker matches ..50 run function cp2:type/work/maho/double_circle_rotate_a_circle_for_teleport
execute if score t particle_worker matches 51 run scoreboard players set t particle_worker 0