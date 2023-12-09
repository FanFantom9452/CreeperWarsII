#Made By Fan_Fan_tom
#傳送陣 A to B
$execute if entity @s[team=$(team)] if entity @e[type=marker,tag=teleport_a,tag=$(team),distance=..2] run scoreboard players add @s teleport.time 2




