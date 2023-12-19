#Made By Fan_Fan_tom
#第一對情侶
$tag @a[team=$(team),tag=!couple1,tag=!couple2,sort=random,limit=1] add couple1
$tag @a[team=$(team),tag=!couple1,tag=!couple2,sort=random,limit=1] add couple2
$tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@p[team=$(team),tag=couple1]"},{"text":" 與 "},{"selector":"@p[team=$(team),tag=couple2]"},{"text":" 變成情侶"}]

