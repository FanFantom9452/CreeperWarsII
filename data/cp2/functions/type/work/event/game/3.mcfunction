#Made By Fan_Fan_tom
tellraw @a ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"隨機事件","color":"yellow"},{"text":" - ","color":"gray"},{"text":"豐收祭來臨","color":"#DCA6FF"},{"text":"\n"},{"text":"事件效果 : 所有玩家獲得32個麵包","color":"#E8EAED"},{"text":"\n "}]
title @a times 10 40 10
title @a subtitle "所有玩家獲得32個麵包"
title @a title "§c豐收祭來臨"
give @a[team=!spec] bread 32
