#Made By Fan_Fan_tom
gamemode survival @s
execute if entity @s[team=blue] run tp @s @e[type=marker,tag=spawnpoint,sort=random,limit=1,tag=blue]
execute if entity @s[team=gold] run tp @s @e[type=marker,tag=spawnpoint,sort=random,limit=1,tag=gold]
title @s actionbar [{"text":"已重生","color": "green","bold": true}]