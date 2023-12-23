#Made By Fan_Fan_tom

#檢查物品
execute unless data entity @s Inventory[{Slot:-106b}].tag.sword if predicate cp2:swords run function cp2:type/item/update/swords {kit:0}








#小三專屬技能
$execute unless data entity @s[tag=small3,team=$(team)] Inventory[{Slot:-106b}].tag.small3 if score $(team) closeness matches 0..799 run item modify entity @s weapon.offhand cp2:fighting/small3/1
$execute unless data entity @s[tag=small3,team=$(team)] Inventory[{Slot:-106b}].tag.small3 if score $(team) closeness matches 800..1599 run item modify entity @s weapon.offhand cp2:fighting/small3/2
$execute unless data entity @s[tag=small3,team=$(team)] Inventory[{Slot:-106b}].tag.small3 if score $(team) closeness matches 1600..2399 run item modify entity @s weapon.offhand cp2:fighting/small3/3
$execute unless data entity @s[tag=small3,team=$(team)] Inventory[{Slot:-106b}].tag.small3 if score $(team) closeness matches 2400.. run item modify entity @s weapon.offhand cp2:fighting/small3/4


