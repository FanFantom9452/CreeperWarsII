#原地旋轉
execute as @e[type=marker,tag=particle_a] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[type=marker,tag=particle_b] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[type=marker,tag=particle_c] at @s run tp @s ~ ~ ~ ~-3 ~
execute as @e[type=marker,tag=particle_d] at @s run tp @s ~ ~ ~ ~4 ~

#產生粒子特效
execute rotated as @e[type=marker,tag=particle_a] positioned ^ ^ ^1 rotated as @e[type=marker,tag=particle_b] positioned ^ ^0.35 ^2.75 run particle witch ~ ~0.2 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^ ^ ^1 rotated as @e[type=marker,tag=particle_b] positioned ^ ^2.25 ^2.5 run particle enchant ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]


execute rotated as @e[type=marker,tag=particle_a] positioned ^1 ^ ^ rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^0.32 rotated as @e[type=marker,tag=particle_c] positioned ^-1 ^ ^0.24 rotated as @e[type=marker,tag=particle_d] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^-1 ^ ^ rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^0.32 rotated as @e[type=marker,tag=particle_c] positioned ^1 ^ ^0.24 rotated as @e[type=marker,tag=particle_d] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]




#記分板 & 停止條件
scoreboard players add t particle_worker 1
execute if score t particle_worker matches ..15 run function cp2:type/work/maho/teleport
execute if score t particle_worker matches 16 run scoreboard players set t particle_worker 0