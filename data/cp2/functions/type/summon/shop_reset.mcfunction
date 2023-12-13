#Made By Fan_Fan_tom
#重置商店
tp @e[type=witch,name=!,tag=] ~ ~-987 ~
kill @e[type=witch,name=!,tag=]

tp @e[type=villager,tag=shop] ~ ~-987 ~
kill @e[type=villager,tag=shop]
execute as @e[type=marker,tag=shop_food] at @s run function cp2:type/summon/shop_food
execute as @e[type=marker,tag=shop_build] at @s run function cp2:type/summon/shop_build
execute as @e[type=marker,tag=shop_armor] at @s run function cp2:type/summon/shop_armor
execute as @e[type=marker,tag=shop_enchanter] at @s run function cp2:type/summon/shop_enchanter
execute as @e[type=marker,tag=shop_scientist] at @s run function cp2:type/summon/shop_scientist
execute as @e[type=marker,tag=shop_engineer] at @s run function cp2:type/summon/shop_engineer
execute as @e[type=marker,tag=shop_brewer] at @s run function cp2:type/summon/shop_brewer


