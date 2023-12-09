#Made By Fan_Fan_tom

tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"已升級無法再次購買!","color":"yellow"}]
$give @s gold_ingot $(amount)
playsound entity.villager.no master @s ~ ~ ~ 1 1 1