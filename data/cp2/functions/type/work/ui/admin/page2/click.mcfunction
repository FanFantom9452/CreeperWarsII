#Made By DragonL 
#Thanks DragonL
#Fantom time to yoink
#first line
execute unless entity @s[nbt={Inventory:[{Slot:9b}]}] run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"已退出管理員模式","color":"white"}]
execute unless entity @s[nbt={Inventory:[{Slot:9b}]}] run tag @s remove admin



execute unless entity @s[nbt={Inventory:[{Slot:10b}]}] run scoreboard players add MainCastle.MaxHp command 25
execute unless entity @s[nbt={Inventory:[{Slot:10b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:11b}]}] run scoreboard players add SubCastle.MaxHp command 25
execute unless entity @s[nbt={Inventory:[{Slot:11b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:12b}]}] run scoreboard players add Random.Game.Event command 10
execute unless entity @s[nbt={Inventory:[{Slot:12b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:13b}]}] run scoreboard players add GoldOre.Respawn command 10
execute unless entity @s[nbt={Inventory:[{Slot:13b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:14b}]}] run scoreboard players add EmeraldOre.Respawn command 10
execute unless entity @s[nbt={Inventory:[{Slot:14b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:15b}]}] run scoreboard players add WildMonster.Respawn command 5
execute unless entity @s[nbt={Inventory:[{Slot:15b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:16b}]}] run scoreboard players add MidMonster.Respawn command 5
execute unless entity @s[nbt={Inventory:[{Slot:16b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:17b}]}] run function cp2:type/work/ui/admin/page2/set


#second line ================================================================================

execute unless entity @s[nbt={Inventory:[{Slot:18b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:19b}]}] run scoreboard players set MainCastle.MaxHp command 250
execute unless entity @s[nbt={Inventory:[{Slot:19b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:20b}]}] run scoreboard players set SubCastle.MaxHp command 150
execute unless entity @s[nbt={Inventory:[{Slot:20b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:21b}]}] run scoreboard players set Random.Game.Event command 90
execute unless entity @s[nbt={Inventory:[{Slot:21b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:22b}]}] run scoreboard players set GoldOre.Respawn command 60
execute unless entity @s[nbt={Inventory:[{Slot:22b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:23b}]}] run scoreboard players set EmeraldOre.Respawn command 120
execute unless entity @s[nbt={Inventory:[{Slot:23b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:24b}]}] run scoreboard players set WildMonster.Respawn command 75
execute unless entity @s[nbt={Inventory:[{Slot:24b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:25b}]}] run scoreboard players set MidMonster.Respawn command 40
execute unless entity @s[nbt={Inventory:[{Slot:25b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:26b}]}] run function cp2:type/work/ui/admin/page2/set

#third line ===================================================================
#========================[last page]=============================
execute unless entity @s[nbt={Inventory:[{Slot:27b}]}] run scoreboard players set @s admin.page 1
execute unless entity @s[nbt={Inventory:[{Slot:27b}]}] run playsound item.book.page_turn master @s ~ ~ ~ 1 1 0
execute unless entity @s[nbt={Inventory:[{Slot:27b}]}] run function cp2:type/work/ui/admin/set
#============================================================
#Main Castle Max Hp
execute unless entity @s[nbt={Inventory:[{Slot:28b}]}] run scoreboard players remove MainCastle.MaxHp command 25
execute unless entity @s[nbt={Inventory:[{Slot:28b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:29b}]}] run scoreboard players remove SubCastle.MaxHp command 25
execute unless entity @s[nbt={Inventory:[{Slot:29b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:30b}]}] run scoreboard players remove Random.Game.Event command 10
execute unless entity @s[nbt={Inventory:[{Slot:30b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:31b}]}] run scoreboard players remove GoldOre.Respawn command 10
execute unless entity @s[nbt={Inventory:[{Slot:31b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:32b}]}] run scoreboard players remove EmeraldOre.Respawn command 10
execute unless entity @s[nbt={Inventory:[{Slot:32b}]}] run function cp2:type/work/ui/admin/page2/set


execute unless entity @s[nbt={Inventory:[{Slot:33b}]}] run scoreboard players remove WildMonster.Respawn command 5
execute unless entity @s[nbt={Inventory:[{Slot:33b}]}] run function cp2:type/work/ui/admin/page2/set

execute unless entity @s[nbt={Inventory:[{Slot:34b}]}] run scoreboard players remove MidMonster.Respawn command 5
execute unless entity @s[nbt={Inventory:[{Slot:34b}]}] run function cp2:type/work/ui/admin/page2/set


#next page
execute unless entity @s[nbt={Inventory:[{Slot:35b}]}] run scoreboard players set @s admin.page 3
execute unless entity @s[nbt={Inventory:[{Slot:35b}]}] run playsound item.book.page_turn master @s ~ ~ ~ 1 1 0
execute unless entity @s[nbt={Inventory:[{Slot:35b}]}] run function cp2:type/work/ui/admin/page3/set