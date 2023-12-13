#Made By Fan_Fan_tom
#雪球運作
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] run particle end_rod ~ ~1.5 ~ 0 0 0 0 0 force @a[distance=..100]
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] run scoreboard players add @s command_timer 1
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] if score @s command_timer matches 2.. run setblock ~ ~-1.5 ~ white_wool keep
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] if score @s command_timer matches 2.. run setblock ^1 ^-1.5 ^ white_wool keep
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] if score @s command_timer matches 2.. run setblock ^-1 ^-1.5 ^ white_wool keep
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] if score @s command_timer matches 2.. run setblock ^ ^-1.5 ^1 white_wool keep
execute if entity @s[nbt={Item:{tag:{bridge:1b}}}] if score @s command_timer matches 2.. run setblock ^ ^-1.5 ^-1 white_wool keep