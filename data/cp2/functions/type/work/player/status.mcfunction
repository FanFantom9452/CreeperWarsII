#Made By Fan_Fan_tom
#戰績
execute unless score @s final.kill matches -2147483648..2147483647 run scoreboard players set @s final.kill 0
execute unless score @s final.death matches -2147483648..2147483647 run scoreboard players set @s final.death 0
execute unless score @s final.atkCrp matches -2147483648..2147483647 run scoreboard players set @s final.atkCrp 0
execute unless score @s final.atkAll matches -2147483648..2147483647 run scoreboard players set @s final.atkAll 0
execute unless score @s final.defAll matches -2147483648..2147483647 run scoreboard players set @s final.defAll 0
execute unless score @s final.assist matches -2147483648..2147483647 run scoreboard players set @s final.assist 0
execute unless score @s final.mined_gold matches -2147483648..2147483647 run scoreboard players set @s final.mined_gold 0
execute unless score @s final.mined_emerald matches -2147483648..2147483647 run scoreboard players set @s final.mined_emerald 0


tellraw @s ["",{"text":"【","color":"light_purple"},{"selector":"@s"},{"text":" 的戰績"},{"text":"】","color":"light_purple"}]
tellraw @s ["",{"text":"擊殺數 : "},{"score":{"name":"@s","objective":"final.kill"},"bold":true,"color":"green"}]
tellraw @s ["",{"text":"死亡數 : "},{"score":{"name":"@s","objective":"final.death"},"bold":true,"color":"red"}]
tellraw @s ["",{"text":"助攻數 : "},{"score":{"name":"@s","objective":"final.assist"},"bold":true,"color":"aqua"}]
tellraw @s ["",{"text":"輸出傷害(苦力怕) : "},{"score":{"name":"@s","objective":"final.atkCrp"},"bold":true,"color":"yellow"}]
tellraw @s ["",{"text":"總輸出傷害 : "},{"score":{"name":"@s","objective":"final.atkAll"},"bold":true,"color":"gold"}]
tellraw @s ["",{"text":"總扛下傷害 : "},{"score":{"name":"@s","objective":"final.defAll"},"bold":true,"color":"aqua"}]
tellraw @s ["",{"text":"挖掘金礦數 : "},{"score":{"name":"@s","objective":"final.mined_gold"},"bold":true,"color":"yellow"}]
tellraw @s ["",{"text":"挖掘綠寶石數 : "},{"score":{"name":"@s","objective":"final.mined_emerald"},"bold":true,"color":"green"}]

#給予玩家無敵
effect give @s resistance infinite 4 true
effect give @s weakness infinite 100 true