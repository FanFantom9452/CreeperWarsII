#Made By Fan_Fan_tom
#tick
#大廳管理debuff
effect give @a weakness 5 100 true
effect give @a saturation 40 87 true
effect give @a resistance 5 4 true


#新玩家加入遊戲
execute as @a[team=] at @s run function cp2:type/work/player/new_player_join

#顯示人數
execute store result score 玩家人數 list run execute if entity @a[team=!spec]

#選擇職業
execute at @e[type=marker,tag=lobby] run setblock ~ ~2 ~ ender_chest 


#關閉商店
kill @e[type=minecraft:villager,tag=shop]


#殺死場景物件
kill @e[type=creeper,tag=blue]
kill @e[type=creeper,tag=gold]
kill @e[type=item]
kill @e[type=llama,tag=wild_monster]
kill @e[type=sniffer,tag=mid_monster]
kill @e[type=text_display,tag=text]
kill @e[type=minecraft:ravager,tag=boss]
kill @e[type=iron_golem,tag=boss]
#設置世界重生點
execute at @e[type=marker,tag=mid] run setworldspawn ~ ~ ~

#創造模式設定
execute as @a[gamemode=creative,tag=!admin] run function cp2:type/work/ui/admin/become_admin
execute as @a[tag=admin,scores={admin.page=1}] run function cp2:type/work/ui/admin/click
execute as @a[tag=admin,scores={admin.page=2}] run function cp2:type/work/ui/admin/page2/click
clear @a[tag=!admin] #cp2:all{clear:1b}




#Loop
execute if score Function.Status command matches 2 run schedule function cp2:type/tick2 1t