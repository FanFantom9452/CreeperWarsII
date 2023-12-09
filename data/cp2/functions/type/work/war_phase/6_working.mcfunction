#Made By Fan_Fan_tom
#最終階段 苦力怕快速凋零
#sub castle creeper
scoreboard players add @e[type=creeper,tag=sub_castle_creeper] damage 10
function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"sub_castle_creeper",HurtTime:0}
function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"sub_castle_creeper",HurtTime:0}
#main castle creeper
execute as @e[type=creeper,tag=main_castle_creeper,tag=blue] unless entity @e[type=creeper,tag=sub_castle_creeper,tag=blue] run scoreboard players add @s damage 10
execute as @e[type=creeper,tag=main_castle_creeper,tag=gold] unless entity @e[type=creeper,tag=sub_castle_creeper,tag=gold] run scoreboard players add @s damage 10
execute as @e[type=creeper,tag=main_castle_creeper,tag=blue] unless entity @e[type=creeper,tag=sub_castle_creeper,tag=blue] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"main_castle_creeper",HurtTime:0}
execute as @e[type=creeper,tag=main_castle_creeper,tag=gold] unless entity @e[type=creeper,tag=sub_castle_creeper,tag=gold] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"main_castle_creeper",HurtTime:0}