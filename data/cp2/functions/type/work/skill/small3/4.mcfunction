#Made By Fan_Fan_tom
#小三技能
tellraw @a[distance=..25] ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector" : "@s"},{"text":" 施放了 §d[§fLv.MAX§d] 小三專屬技能","color":"white"}]
effect give @s invisibility 180 0 false
tag @s add Fan.skill.attacker
$execute as @a[team=!$(team),distance=..8] run damage @s 8 player_attack by @p[tag=Fan.skill.attacker]
tag @s remove Fan.skill.attacker