#Made By Fan_Fan_tom
#判定

execute if predicate cp2:swords if score @s sneak.time matches 0 if score @s[scores={kit=0}] CD.sword matches 1.. run function cp2:type/work/skill/kit_0/sword/cd
execute if predicate cp2:swords if score @s sneak.time matches 0 if score @s[scores={kit=0}] CD.sword matches 0 run function cp2:type/work/skill/kit_0/sword/check








#蹲下右鍵 - 小三專屬技能
$execute if score @s[tag=small3,team=$(team)] sneak.time matches 1.. if score $(team) closeness matches 0..799 run function cp2:type/work/skill/small3/1 {team:"$(team)"}
$execute if score @s[tag=small3,team=$(team)] sneak.time matches 1.. if score $(team) closeness matches 800..1599 run function cp2:type/work/skill/small3/2 {team:"$(team)"}
$execute if score @s[tag=small3,team=$(team)] sneak.time matches 1.. if score $(team) closeness matches 1600..2399 run function cp2:type/work/skill/small3/3 {team:"$(team)"}
$execute if score @s[tag=small3,team=$(team)] sneak.time matches 1.. if score $(team) closeness matches 2400.. run function cp2:type/work/skill/small3/4 {team:"$(team)"}

function cp2:type/item/carrot_on_a_stick
#reset
scoreboard players reset @s rc