#Made By Fan_Fan_tom
tellraw @a ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"隨機事件","color":"yellow"},{"text":" - ","color":"gray"},{"text":"查水表","color":"#DCA6FF"},{"text":"\n"},{"text":"事件效果 : 隨機 1 位玩家扣除 50 元","color":"#E8EAED"},{"text":"\n "}]
title @a times 10 40 10
title @a subtitle "隨機 1 位玩家扣除 50 元"
title @a title "§c查水表"
tag @r[team=!spec] add Fan.tmp.event
tellraw @a[tag=Fan.tmp.event] ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"您被查水表 從帳戶中扣除 50 元","color":"yellow"}]
scoreboard players remove @a[tag=Fan.tmp.event] money 50
tag @a[tag=Fan.tmp.event] remove Fan.tmp.event