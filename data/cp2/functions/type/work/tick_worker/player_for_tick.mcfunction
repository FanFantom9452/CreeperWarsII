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

#持續替換副手
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run clear @s carrot_on_a_stick{clear:1b,rc:1b}
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:invisibility"}]},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{rc:1b}}]}] run function cp2:type/work/player/replace_offhand

#右鍵使用
#execute if score @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] rc matches 1.. run effect give @s levitation 1 1 true
execute if score @s rc matches 1.. run scoreboard players reset @s rc



#助攻系統
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
