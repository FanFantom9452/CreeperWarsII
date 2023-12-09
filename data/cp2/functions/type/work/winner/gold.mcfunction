#Made By Fan_Fan_tom
#Blue Win
title @a times 20 200 20
title @a subtitle "§a§lCreeper §c§lWars §6§l§nII"
title @a[team=gold] title "§6§lVictory"
title @a[team=blue] title "§c§lDefeat"
title @a[team=spec] title "§6§l金隊勝利"
execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1
scoreboard players set Winner.Testfor command 0



#顯示戰績
execute as @a run function cp2:type/work/player/status
#顯示結果
tellraw @a ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"遊戲結束 ","color":"yellow"},{"text":"\n"},{"text":"戰爭結果","color":"#FF81FF"},{"text":" : ","color":"gray"},{"text":"金隊獲勝","bold":true,"underlined":true,"color":"gold"},{"text":"\n "}]

