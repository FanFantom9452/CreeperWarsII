#Made By Fan_Fan_tom
#第一對情侶
$tag @a[team=$(team),tag=!couple1,tag=!couple2,tag=!small3,sort=random,limit=1] add small3
$tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@p[team=$(team),tag=small3]"},{"text":" 成為小三"}]

