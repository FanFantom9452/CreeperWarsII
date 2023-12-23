#Made By Fan_Fan_tom
#小三技能
tellraw @a[distance=..25] ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector" : "@s"},{"text":" 施放了 §c[§fLv.3§c] 小三專屬技能","color":"white"}]
effect give @s invisibility 120 0 false
tag @s add Fan.skill.attacker
$execute as @a[team=!$(team),distance=..8] run damage @s 6 player_attack by @p[tag=Fan.skill.attacker]
tag @s remove Fan.skill.attacker