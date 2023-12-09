#原地旋轉
execute as @e[type=marker,tag=particle_a] at @s run tp @s ~ ~ ~ ~0.1 ~
execute as @e[type=marker,tag=particle_b] at @s run tp @s ~ ~ ~ ~1 ~


#產生粒子特效
execute rotated as @e[type=marker,tag=particle_a] positioned ^ ^ ^5 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^ ^ ^-5 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^5 ^ ^ rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^-5 ^ ^ rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]

execute rotated as @e[type=marker,tag=particle_a] positioned ^5 ^ ^5 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^5 ^ ^-5 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^-5 ^ ^5 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]
execute rotated as @e[type=marker,tag=particle_a] positioned ^-5 ^ ^-5 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle dust 0.749 0 1 1 ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]



execute rotated as @e[type=marker,tag=particle_a] positioned ^ ^1.75 ^1 rotated as @e[type=marker,tag=particle_b] positioned ^ ^ ^1.6 run particle enchant ~ ~0.1 ~ 0 0 0 0.1 0 force @a[distance=..50]



#記分板 & 停止條件
scoreboard players add t particle_worker 1
execute if score t particle_worker matches ..199 positioned ~ ~0.1 ~ run function fantomsmp:type/work/maho/magic_attack2
execute if score t particle_worker matches 200 run scoreboard players set t particle_worker 0