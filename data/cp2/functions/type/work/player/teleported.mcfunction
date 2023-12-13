#Made By Fan_Fan_tom
#傳送陣 A to B
$tp @s @e[type=marker,tag=$(team),tag=teleport_b,sort=random,limit=1]
playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 1
scoreboard players reset @s teleport.time
$execute at @e[type=marker,tag=$(team),tag=teleport_b,sort=nearest,limit=1] run function cp2:type/work/maho/circle

