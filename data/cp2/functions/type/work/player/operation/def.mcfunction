#Made By Fan_Fan_tom
#計算扛傷
#統計-Def 1
$effect clear @s[nbt={active_effects:[{id:"minecraft:invisibility"}]},scores={$(object)=1..}] invisibility
$scoreboard players operation @s[scores={$(object)=1..}] tmp.defDmg /= 10 command
$scoreboard players operation @s[scores={$(object)=1..}] final.defAll += @s[scores={$(object)=1..}] tmp.defDmg
$scoreboard players reset @s[scores={$(object)=1..}] $(object)