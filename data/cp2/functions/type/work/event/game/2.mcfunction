#Made By Fan_Fan_tom
tellraw @a ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"隨機事件","color":"yellow"},{"text":" - ","color":"gray"},{"text":"眼睛糊到蛤仔肉","color":"#DCA6FF"},{"text":"\n"},{"text":"事件效果 : 所有玩家失明 10 秒","color":"#E8EAED"},{"text":"\n "}]
title @a times 10 40 10
title @a subtitle "所有玩家失明 10 秒"
title @a title "§c眼睛糊到蛤仔肉"
effect give @a[team=!spec] blindness 10 0 false
