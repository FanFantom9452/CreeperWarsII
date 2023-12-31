#Made By Fan_Fan_tom
#tick
#大廳管理debuff
effect give @a weakness 5 100 true
effect give @a saturation 40 87 true
effect give @a resistance 5 4 true


#新玩家加入遊戲
execute as @a[team=] at @s run function cp2:type/work/player/new_player_join

#顯示人數
execute store result score 玩家人數 list if entity @a[team=!spec]

#選擇職業
execute as @a unless score @s kit matches -2147483648..2147483647 run scoreboard players set @s kit 0
execute at @e[type=marker,tag=lobby] run setblock ~ ~2 ~ ender_chest
execute at @e[type=marker,tag=lobby] run particle end_rod ~ ~ ~ 10 0.3 10 0 1 force @a[distance=..50]
execute as @a if data entity @s Inventory[].tag.choose_kit_item store result score @s holding.kit run data get entity @s Inventory[].tag.kit 1
execute as @a if score @s holding.kit matches -2147483648..2147483647 run function cp2:type/work/player/choose_kit/worker

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
execute as @a[tag=admin,scores={admin.page=3}] run function cp2:type/work/ui/admin/page3/click
clear @a[tag=!admin] #cp2:all{clear:1b}



#掉入虛空傳送回大廳
execute as @a at @s if entity @s[y=-64.5,dy=-100] run tp @s @e[type=marker,tag=lobby,sort=nearest,limit=1]

#Loop
execute if score Function.Status command matches 2 run schedule function cp2:type/tick2 1t