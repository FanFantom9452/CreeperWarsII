title @a times 0 30 20
title @a subtitle "Game Start"
title @a title "§a§lCreeper §c§lWars §6§lII"
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1

#更新bossbar
execute as @e[type=creeper,tag=blue,tag=main_castle_creeper] run bossbar set blue_creeper_health name ["",{"text":"\u3010","color":"aqua"},{"text":"藍隊","color":"white"},{"text":"\u3011","color":"aqua"},{"selector":"@s"},{"text":" [ ","color":"red"},{"score":{"name":"@s","objective":"hp"},"bold":true,"underlined":true,"color":"green"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"maxhp"},"color":"red"},{"text":" ]","color":"red"}]
execute as @e[type=creeper,tag=gold,tag=main_castle_creeper] run bossbar set gold_creeper_health name ["",{"text":"\u3010","color":"gold"},{"text":"金隊","color":"white"},{"text":"\u3011","color":"gold"},{"selector":"@s"},{"text":" [ ","color":"red"},{"score":{"name":"@s","objective":"hp"},"bold":true,"underlined":true,"color":"green"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"maxhp"},"color":"red"},{"text":" ]","color":"red"}]
execute store result bossbar blue_creeper_health value run scoreboard players get @e[type=creeper,sort=nearest,limit=1,tag=blue,tag=main_castle_creeper] hp
execute store result bossbar blue_creeper_health max run scoreboard players get @e[type=creeper,sort=nearest,limit=1,tag=blue,tag=main_castle_creeper] maxhp
execute store result bossbar gold_creeper_health value run scoreboard players get @e[type=creeper,sort=nearest,limit=1,tag=gold,tag=main_castle_creeper] hp
execute store result bossbar gold_creeper_health max run scoreboard players get @e[type=creeper,sort=nearest,limit=1,tag=gold,tag=main_castle_creeper] maxhp
#設定開始偵測勝利
scoreboard players set Winner.Testfor command 1