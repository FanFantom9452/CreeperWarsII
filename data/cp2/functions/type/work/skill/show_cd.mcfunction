#Made By Fan_Fan_tom
$execute if score @s CD.$(type) matches 1.. run title @s actionbar ["",{"text":"戰技冷卻中... (冷卻 ","color":"gray"},{"score":{"name":"@s","objective":"CD.$(type)"},"bold":true,"underlined":true,"color":"white"},{"text":" 秒)","color":"gray"}]
$execute if score @s CD.$(type) matches 0 run title @s actionbar ["",{"text":"戰技已準備就緒","color":"green"}]