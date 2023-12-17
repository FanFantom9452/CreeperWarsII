#Made By Fan_Fan_tom
#守護者苦力怕死亡
#find killer
scoreboard players operation #killer.tmp lastAttackerID = @s lastAttackerID
execute as @a if score @s playerID = #killer.tmp lastAttackerID run tag @s add Fan.creeperKiller
#msg
#有找到擊殺者
$execute if entity @a[tag=Fan.creeperKiller] run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"【","color":"$(color)"},{"text":"$(team_name)","color":"white"},{"text":"】主堡苦力怕 ","color":"$(color)"},{"text":"被 ","color":"white"},{"selector":"@p[tag=Fan.creeperKiller]"},{"text":" 擊殺了","color":"white"}]
#沒找到擊殺者
$execute unless entity @a[tag=Fan.creeperKiller] run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"【","color":"$(color)"},{"text":"$(team_name)","color":"white"},{"text":"】主堡苦力怕 ","color":"$(color)"},{"text":"死亡了","color":"white"}]




#remove tag
tag @a[tag=Fan.creeperKiller] remove Fan.creeperKiller