#Made By Fan_Fan_tom
#計算扛傷
#統計-Def 1
$execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]},scores={$(object)=1..}] run tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"您因為受傷而解除隱形效果","color":"red"}]
$effect clear @s[nbt={active_effects:[{id:"minecraft:invisibility"}]},scores={$(object)=1..}] invisibility
$scoreboard players operation @s[scores={$(object)=1..}] tmp.defDmg /= 10 command
$scoreboard players operation @s[scores={$(object)=1..}] final.defAll += @s[scores={$(object)=1..}] tmp.defDmg
$scoreboard players reset @s[scores={$(object)=1..}] $(object)