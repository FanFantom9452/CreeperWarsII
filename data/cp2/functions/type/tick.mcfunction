#Made By Fan_Fan_tom
#tick


#顯示粒子
execute as @e[type=minecraft:marker,tag=setup,tag=!blue,tag=!gold] at @s run particle minecraft:end_rod ~ ~ ~ 0 0.3 0 0 2 force @a[distance=..100]
execute as @e[type=minecraft:marker,tag=setup,tag=blue] at @s run particle minecraft:dust 0 0.639 0.722 1 ~ ~ ~ 0 0.3 0 0 2 force @a[distance=..100]
execute as @e[type=minecraft:marker,tag=setup,tag=gold] at @s run particle minecraft:dust 0.902 0.647 0.09 1 ~ ~ ~ 0 0.3 0 0 2 force @a[distance=..100]


#刪除物件
execute as @e[type=minecraft:marker,tag=setup] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..1] run particle angry_villager ~ ~ ~ 1 1 1 1 100 force @a
execute as @e[type=minecraft:marker,tag=setup] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..1] run kill @s 

#物件加入金隊
execute as @e[type=minecraft:marker,tag=setup] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run tag @s add gold
execute as @e[type=minecraft:marker,tag=setup] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run particle happy_villager ~ ~1 ~ 1 1 1 1 100 force @a
execute as @e[type=minecraft:marker,tag=setup] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1]

#物件加入藍隊
execute as @e[type=minecraft:marker,tag=setup] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..1] run tag @s add blue
execute as @e[type=minecraft:marker,tag=setup] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..1] run particle happy_villager ~ ~1 ~ 1 1 1 1 100 force @a
execute as @e[type=minecraft:marker,tag=setup] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..1]


execute store result score 玩家人數 list run execute if entity @a

#Loop
execute if score Function.Status command matches 1 run schedule function cp2:type/tick 1t