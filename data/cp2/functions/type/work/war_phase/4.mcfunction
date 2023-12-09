#Made By Fan_Fan_tom
title @a times 20 100 20
title @a subtitle "家裡生產綠寶石 BOSS重生時間減半"
title @a title {"text": "第四階段","color": "green"}

tellraw @a ["",{"text":"\n"},{"text":"Creeper","color":"green"},{"text":" Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"第四階段","color":"green"},{"text":" 稀有礦物...","color":"gray"},{"text":"\n"},{"text":"第四階段 : 家裡生產綠寶石 BOSS重生時間減半","color":"white"},{"text":"\n "}]
scoreboard players add 戰爭階段 list 1


execute as @e[type=marker,tag=boss_isar,tag=setup] run scoreboard players operation @s command_timer /= 2 command
execute as @e[type=marker,tag=boss_ore_god,tag=setup] run scoreboard players operation @s command_timer /= 2 command


