#Made By Fan_Fan_tom
#領錢
$scoreboard players set cost shop.atm $(cost)
execute unless score @s money >= cost shop.atm run function cp2:type/work/shop/atm/fail
$execute if score @s money >= cost shop.atm run function cp2:type/work/shop/atm/success {cost:$(cost)}
scoreboard players reset cost shop.atm
clear @s gunpowder{atm:1b}
function cp2:type/item/ender_chest/atm