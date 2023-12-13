#Made By Fan_Fan_tom
title @s times 20 100 20
title @s subtitle "§eBy§c【§f飯桶工作室§c】"
title @s title "§a§lCreeper §c§lWars §6§l§nII"
effect give @s absorption 1 0 true
effect give @s blindness 5 0 true
execute if score Function.Status command matches 2 run team join waiting @s
execute if score Function.Status command matches 2 run gamemode adventure @s
execute if score Function.Status command matches 2 run tp @s @e[type=marker,tag=lobby,sort=nearest,limit=1]
execute if score Function.Status command matches 3 run team join spec @s
execute if score Function.Status command matches 3 run gamemode spectator @s
execute if score Function.Status command matches 3 run tp @s @e[type=marker,tag=mid,sort=nearest,limit=1]


#中途加入遊戲
#false
execute if score Function.Status command matches 3 if score Join.Midway scenarios matches 0 run tellraw @s ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"遊戲正在進行中...目前不開放中途加入...","color":"white"},{"text":"\n "}]
#true
execute if score Function.Status command matches 3 if score Join.Midway scenarios matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"遊戲正在進行中... 是否要中途加入?","color":"white"},{"text":"\n"},{"text":"【","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 1"},"hoverEvent":{"action":"show_text","contents":"點我中途加入遊戲"}},{"text":"我想中途加入遊戲","bold":true,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger trigger set 1"},"hoverEvent":{"action":"show_text","contents":"點我中途加入遊戲"}},{"text":"】","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 1"},"hoverEvent":{"action":"show_text","contents":"點我中途加入遊戲"}},{"text":" | ","color":"yellow"},{"text":"【","bold":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger trigger set 2"},"hoverEvent":{"action":"show_text","contents":"點我繼續觀戰"}},{"text":"不用了 我觀戰就好","bold":true,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger trigger set 2"},"hoverEvent":{"action":"show_text","contents":"點我繼續觀戰"}},{"text":"】","bold":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger trigger set 2"},"hoverEvent":{"action":"show_text","contents":"點我繼續觀戰"}},{"text":"\n "}]



