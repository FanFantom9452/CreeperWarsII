#Made By Fan_Fan_tom
tellraw @a ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"隨機事件","color":"yellow"},{"text":" - ","color":"gray"},{"text":"天氣轉涼","color":"#DCA6FF"},{"text":"\n"},{"text":"事件效果 : 所有玩家受到緩速效果","color":"#E8EAED"},{"text":"\n "}]
title @a times 10 40 10
title @a subtitle "所有玩家受到緩速效果"
title @a title "§c天氣轉涼"
effect give @a[team=!spec] slowness 20 0 false

