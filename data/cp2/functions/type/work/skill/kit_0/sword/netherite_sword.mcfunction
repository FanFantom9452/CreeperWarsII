#Made By Fan_Fan_tom
tellraw @a[distance=..25] ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@s"},{"text":" 施放了劍技 §d[§fLv.MAX§d] 副手解放","color":"white"}]
scoreboard players set @s free.offhand 2000
scoreboard players set @s CD.sword 130
effect give @s haste 100 1 false