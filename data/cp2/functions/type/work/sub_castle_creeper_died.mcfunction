#Made By Fan_Fan_tom
#守護者苦力怕死亡
#find killer
scoreboard players operation #killer.tmp lastAttackerID = @s lastAttackerID
execute as @a if score @s playerID = #killer.tmp lastAttackerID run tag @s add Fan.creeperKiller
#msg
#有找到擊殺者
$execute if entity @a[tag=Fan.creeperKiller] run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"【","color":"$(color)"},{"text":"$(team_name)","color":"white"},{"text":"】守護者苦力怕 ","color":"$(color)"},{"text":"被 ","color":"white"},{"selector":"@p[tag=Fan.creeperKiller]"},{"text":" 擊殺了","color":"white"}]
#沒找到擊殺者
$execute unless entity @a[tag=Fan.creeperKiller] run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"【","color":"$(color)"},{"text":"$(team_name)","color":"white"},{"text":"】守護者苦力怕 ","color":"$(color)"},{"text":"死亡了","color":"white"}]


#場上如果沒有守護者苦力怕 則觸發
$execute unless entity @e[type=creeper,tag=sub_castle_creeper,tag=$(team),distance=1..] run say no creeper left $(team)
#已有情侶 : 抽小三 2nd
$execute if entity @a[team=$(team),tag=couple1] if entity @a[team=$(team),tag=couple2] unless entity @a[team=$(team),tag=small3] run function cp2:type/work/couple/small3 {team:"$(team)"}
#還沒有情侶 1st
$execute unless entity @a[team=$(team),tag=couple1] unless entity @a[team=$(team),tag=couple2] run function cp2:type/work/couple/first_couple {team:"$(team)"}

#remove tag
tag @a[tag=Fan.creeperKiller] remove Fan.creeperKiller