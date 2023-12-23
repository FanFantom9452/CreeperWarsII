#Made By Fan_Fan_tom
#玩家
#ID
execute unless score @s playerID matches -2147483648..2147483647 run function cp2:type/work/player/id

#tick
#新玩家加入遊戲
execute if entity @s[team=] run function cp2:type/work/player/new_player_join
execute if entity @s[team=waiting] run function cp2:type/work/player/new_player_join

#中途加入
scoreboard players enable @s trigger
execute if score @s[team=spec] trigger matches 1 if score Function.Status command matches 3 if score Join.Midway scenarios matches 1 run function cp2:type/work/player/join_midway
execute if score @s[team=spec] trigger matches 2 if score Function.Status command matches 3 if score Join.Midway scenarios matches 1 run function cp2:type/work/player/still_spec


#提領金錢
execute store result score @s shop.atm run clear @s gunpowder{atm:1b} 0
execute if score @s shop.atm matches 1 run function cp2:type/work/shop/atm/withdraw_money {cost:1}
execute if score @s shop.atm matches 10 run function cp2:type/work/shop/atm/withdraw_money {cost:10}
execute if score @s shop.atm matches 64 run function cp2:type/work/shop/atm/withdraw_money {cost:100}

#選擇職業
execute unless score @s kit matches -2147483648..2147483647 run scoreboard players set @s kit 0
execute if data entity @s Inventory[].tag.choose_kit_item store result score @s holding.kit run data get entity @s Inventory[].tag.kit 1
execute if score @s holding.kit matches -2147483648..2147483647 run function cp2:type/work/player/choose_kit/worker


#持續替換副手
execute unless score @s free.offhand matches -2147483648..2147483647 run scoreboard players set @s free.offhand 0
execute if score @s free.offhand matches 1.. run scoreboard players remove @s free.offhand 1
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run scoreboard players add @s free.offhand 1
execute if score @s free.offhand matches 1.. run clear @s carrot_on_a_stick{clear:1b,rc:1b}
#如果副手為火藥 則存進銀行
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:gunpowder"}]}] run function cp2:type/work/shop/atm/deposit_money
#填充
execute if entity @s[scores={free.offhand=0},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{rc:1b}}]}] run function cp2:type/work/player/replace_offhand

#新增說明
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{rc:1b}}]},team=blue] run function cp2:type/item/check_item_to_set_lore {team:"blue"}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{rc:1b}}]},team=gold] run function cp2:type/item/check_item_to_set_lore {team:"gold"}

#手持武器顯示戰技冷卻
execute if predicate cp2:swords if entity @s[tag=!holding.swords] run function cp2:type/work/skill/show_cd {type:"sword"}
execute if predicate cp2:axes if entity @s[tag=!holding.axes] run function cp2:type/work/skill/show_cd {type:"axe"}
execute if predicate cp2:pickaxes if entity @s[tag=!holding.pickaxes] run function cp2:type/work/skill/show_cd {type:"pickaxe"}
execute if predicate cp2:shovels if entity @s[tag=!holding.shovels] run function cp2:type/work/skill/show_cd {type:"shovel"}
execute if predicate cp2:hoes if entity @s[tag=!holding.hoes] run function cp2:type/work/skill/show_cd {type:"hoe"}
#add tag
execute if predicate cp2:swords run tag @s add holding.swords
execute if predicate cp2:axes run tag @s add holding.axes
execute if predicate cp2:pickaxes run tag @s add holding.pickaxes
execute if predicate cp2:shovels run tag @s add holding.shovels
execute if predicate cp2:hoes run tag @s add holding.hoes
#remove tag
execute unless predicate cp2:swords run tag @s remove holding.swords
execute unless predicate cp2:axes run tag @s remove holding.axes
execute unless predicate cp2:pickaxes run tag @s remove holding.pickaxes
execute unless predicate cp2:shovels run tag @s remove holding.shovels
execute unless predicate cp2:hoes run tag @s remove holding.hoes

#右鍵使用
execute if score @s[team=blue] rc matches 1.. run function cp2:type/work/skill/worker {team:"blue"}
execute if score @s[team=gold] rc matches 1.. run function cp2:type/work/skill/worker {team:"gold"}





#助攻系統
#扛傷統計 / 受傷清除隱形
#在成就裡面 player hurt player 


#死亡運作
execute if score @s death matches 1.. run function cp2:type/work/player/death
#殺人懲罰
execute if score @s kill matches 1.. run function cp2:type/work/player/kill_player


#嘗試傳送 傳送陣 A to B
execute if score @s[team=blue] sneak.time matches 1.. run function cp2:type/work/player/trying_teleport {team:"blue"}
execute if score @s[team=gold] sneak.time matches 1.. run function cp2:type/work/player/trying_teleport {team:"gold"}
#傳送完成
execute if score @s[team=blue,scores={teleport.time=80..}] sneak.time matches 1.. if entity @e[type=marker,tag=teleport_a,tag=blue,distance=..2] run function cp2:type/work/player/teleported {team:"blue"}
execute if score @s[team=gold,scores={teleport.time=80..}] sneak.time matches 1.. if entity @e[type=marker,tag=teleport_a,tag=gold,distance=..2] run function cp2:type/work/player/teleported {team:"gold"}
execute if score @s teleport.time matches 1..20 run effect give @s slowness 1 0 true
execute if score @s teleport.time matches 21..40 run effect give @s slowness 1 1 true
execute if score @s teleport.time matches 41..60 run effect give @s slowness 1 2 true
execute if score @s teleport.time matches 61..80 run effect give @s slowness 1 3 true
scoreboard players remove @s[scores={teleport.time=1..}] teleport.time 1


#團隊羊毛
execute if entity @s[team=blue,nbt={Inventory:[{id:"minecraft:light_blue_wool",tag:{team_wool:1b}}]}] run function cp2:type/item/blue/team_wool
execute if entity @s[team=gold,nbt={Inventory:[{id:"minecraft:orange_wool",tag:{team_wool:1b}}]}] run function cp2:type/item/gold/team_wool

#科學家升級
execute if entity @s[team=blue] run function cp2:type/work/player/upgrade/all {team:"blue"}
execute if entity @s[team=gold] run function cp2:type/work/player/upgrade/all {team:"gold"}
#clear item
execute if entity @s[nbt={Inventory:[{tag:{drop_clear:1b}}]}] run clear @s #cp2:all{drop_clear:1b}

#y 低於-64 強制kill
execute if score Winner.Testfor command matches 1 if entity @s[gamemode=survival,y=-64.5,dy=-100] run kill @s

#統計-Attack All
execute if score @s tmp.atkDmg matches 1.. run scoreboard players operation @s tmp.atkDmg /= 10 command
execute if score @s tmp.atkDmg matches 1.. run scoreboard players operation @s final.atkAll += @s tmp.atkDmg
#統計-Attack All2
execute if score @s tmp.atkDmg2 matches 1.. run scoreboard players operation @s tmp.atkDmg2 /= 10 command
execute if score @s tmp.atkDmg2 matches 1.. run scoreboard players operation @s final.atkAll += @s tmp.atkDmg2

#統計扛傷
scoreboard players reset @s[scores={tmp.defDmg=1..}] tmp.defDmg
scoreboard players reset @s[scores={tmp.defDmg2=1..}] tmp.defDmg2
scoreboard players reset @s[scores={tmp.defDmg3=1..}] tmp.defDmg3


#遊戲結束掉入虛空傳送回大廳
execute if score Winner.Testfor command matches 0 if entity @s[gamemode=survival,y=-64.5,dy=-100] run tp @s @e[type=marker,tag=mid,sort=nearest,limit=1]
