#Made By Fan_Fan_tom
#情侶系統
execute if entity @s[tag=couple1,team=blue] run function cp2:type/work/couple/work_for_couple {team:"blue"}
execute if entity @s[tag=couple1,team=gold] run function cp2:type/work/couple/work_for_couple {team:"gold"}

#小三
execute if entity @s[tag=small3] run function cp2:type/work/couple/work_for_small3







#戰技冷卻
execute unless score @s CD.sword matches -2147483648..2147483647 run scoreboard players set @s CD.sword 0
execute unless score @s CD.axe matches -2147483648..2147483647 run scoreboard players set @s CD.axe 0
execute unless score @s CD.pickaxe matches -2147483648..2147483647 run scoreboard players set @s CD.pickaxe 0
execute unless score @s CD.shovel matches -2147483648..2147483647 run scoreboard players set @s CD.shovel 0
execute unless score @s CD.hoe matches -2147483648..2147483647 run scoreboard players set @s CD.hoe 0

execute if score @s CD.sword matches 1.. run scoreboard players remove @s CD.sword 1
execute if score @s CD.axe matches 1.. run scoreboard players remove @s CD.axe 1
execute if score @s CD.pickaxe matches 1.. run scoreboard players remove @s CD.pickaxe 1
execute if score @s CD.shovel matches 1.. run scoreboard players remove @s CD.shovel 1
execute if score @s CD.hoe matches 1.. run scoreboard players remove @s CD.hoe 1





#轉職冷卻
execute if score @s CD.change_kit matches 1 run tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":" §f轉職冷卻完畢，可以重新選擇職業","color":"white"}]
execute if score @s CD.change_kit matches 1.. run scoreboard players remove @s CD.change_kit 1