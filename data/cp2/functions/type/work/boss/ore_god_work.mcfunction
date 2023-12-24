#Made By Fan_Fan_tom
#礦物God

#player close to boss add timer
execute if entity @a[gamemode=!spectator,distance=..20] run scoreboard players add @s command_timer 1

#testfor timer
execute if score @s command_timer matches 100..130 run function cp2:type/work/maho/warning_circle/red_10
execute if score @s command_timer matches 131 as @a[distance=..10,gamemode=!spectator] run damage @s 4 mob_attack_no_aggro by @e[type=iron_golem,tag=boss,sort=nearest,limit=1]

 




#reset timer
execute if score @s command_timer matches 230.. run scoreboard players reset @s command_timer