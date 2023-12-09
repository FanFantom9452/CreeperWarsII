#Made By Fan_Fan_tom
title @a times 20 100 20
title @a subtitle "戰爭結束"
title @a title {"text": "最終階段","color": "green"}

tellraw @a ["",{"text":"\n"},{"text":"Creeper","color":"green"},{"text":" Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"最終階段","color":"green"},{"text":" 戰爭結束","color":"gray"},{"text":"\n"},{"text":"最終階段 : 進入結算，強制讓苦力怕快速掉血至死亡","color":"white"},{"text":"\n "}]
scoreboard players add 戰爭階段 list 1
scoreboard players set shield.1 upgrade.blue 0
scoreboard players set shield.1 upgrade.gold 0
gamemode spectator @a

