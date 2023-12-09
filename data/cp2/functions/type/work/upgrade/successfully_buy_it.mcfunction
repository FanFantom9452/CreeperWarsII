#Made By Fan_Fan_tom
$scoreboard players set $(target) upgrade.$(team) 1

$tellraw @a[team=$(team)] ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@s"},{"text":" 購買了 ","color":"white"},{"text":"$(text)","color":"yellow"},{"text":"$(level)","color":"gray"}]
$execute as @a[team=$(team)] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
