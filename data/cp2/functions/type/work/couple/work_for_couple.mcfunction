#Made By Fan_Fan_tom
$execute if entity @s[team=$(team)] if entity @a[team=$(team),tag=couple2,distance=..8] run effect give @a[team=$(team)] resistance 1 0 true
$execute if entity @s[team=$(team)] if entity @a[team=$(team),tag=couple2,distance=..8] run scoreboard players add $(team) closeness 5
$title @a[team=$(team),tag=couple1] actionbar ["",{"text":"親密度 ","color":"#FF84FF"},{"score":{"name":"$(team)","objective":"closeness"},"bold":true,"underlined":true,"color":"#FFAAFF"}]
$title @a[team=$(team),tag=couple2] actionbar ["",{"text":"親密度 ","color":"#FF84FF"},{"score":{"name":"$(team)","objective":"closeness"},"bold":true,"underlined":true,"color":"#FFAAFF"}]