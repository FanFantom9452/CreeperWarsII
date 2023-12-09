#Made By Fan_Fan_tom
#Update Creeper Health
$execute as @e[type=creeper,tag=$(team),tag=$(who),nbt={HurtTime:$(HurtTime)s}] if entity @s[tag=blue] run bossbar set $(team)_creeper_health name ["",{"text":"\u3010","color":"aqua"},{"text":"藍隊","color":"white"},{"text":"\u3011","color":"aqua"},{"selector":"@s"},{"text":" [ ","color":"red"},{"score":{"name":"@s","objective":"hp"},"bold":true,"underlined":true,"color":"green"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"maxhp"},"color":"red"},{"text":" ]","color":"red"}]
$execute as @e[type=creeper,tag=$(team),tag=$(who),nbt={HurtTime:$(HurtTime)s}] if entity @s[tag=gold] run bossbar set $(team)_creeper_health name ["",{"text":"\u3010","color":"gold"},{"text":"金隊","color":"white"},{"text":"\u3011","color":"gold"},{"selector":"@s"},{"text":" [ ","color":"red"},{"score":{"name":"@s","objective":"hp"},"bold":true,"underlined":true,"color":"green"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"maxhp"},"color":"red"},{"text":" ]","color":"red"}]


$execute as @e[type=creeper,nbt={HurtTime:$(HurtTime)s},tag=$(team),tag=$(who)] at @s store result bossbar $(team)_creeper_health value run scoreboard players get @s hp
$execute as @e[type=creeper,nbt={HurtTime:$(HurtTime)s},tag=$(team),tag=$(who)] at @s store result bossbar $(team)_creeper_health max run scoreboard players get @s maxhp
#苦力怕受傷通知
$execute if entity @s[nbt={HurtTime:10s}] run function cp2:type/work/warning/$(team)_$(who)

execute if entity @s[nbt={HurtTime:10s}] run effect give @s glowing 3 0 true
execute if entity @s[nbt={HurtTime:10s}] on attacker run effect give @s glowing 30 0 false