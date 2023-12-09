#Made By Fan_Fan_tom
#如果副手為火藥 則存進銀行
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:gunpowder"}]}] run function cp2:type/work/shop/atm/deposit_money

#處理副手交換
execute if data entity @s Inventory[{Slot:-106b}] run summon item ~ ~ ~ {Tags:["tmp_item"],Item:{id:"minecraft:stone",Count:1b,tag:{}},Invulnerable:1b,Owner:[I;0,0,0,0]}
data modify entity @e[type=item,tag=tmp_item,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=tmp_item,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
clear @s carrot_on_a_stick{rc:1b}
function cp2:type/item/carrot_on_a_stick