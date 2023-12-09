#Made By Fan_Fan_tom
execute if entity @s[type=creeper,tag=sub_castle_creeper,tag=blue] run say blue sub_castle_creeper died
execute if entity @s[type=creeper,tag=sub_castle_creeper,tag=gold] run say gold sub_castle_creeper died

execute if entity @s[type=creeper,tag=main_castle_creeper,tag=blue] run say blue main_castle_creeper died
execute if entity @s[type=creeper,tag=main_castle_creeper,tag=gold] run say gold main_castle_creeper died


#更新BOSS血量
execute if entity @s[type=creeper] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {HurtTime:10}

#野怪給予等級
execute if entity @s[type=llama,tag=wild_monster] on attacker run xp add @s 5 levels
execute if entity @s[type=llama,tag=wild_monster] on attacker run effect give @s regeneration 12 0 false
execute if entity @s[type=llama,tag=wild_monster] on attacker run tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | 擊殺獎勵 : 5 等經驗值、少量火藥、少量回復生命","color":"gray"}]

#吸吸怪給予等級
execute if entity @s[type=sniffer,tag=mid_monster] on attacker run give @s diamond
execute if entity @s[type=sniffer,tag=mid_monster] on attacker run tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | 擊殺獎勵 : 鑽石x1","color":"gray"}]

#礦物BOSS
#blue
execute if entity @s[type=iron_golem,tag=boss] on attacker if entity @s[team=blue] run give @a[team=blue] gunpowder 128
execute if entity @s[type=iron_golem,tag=boss] on attacker if entity @s[team=blue] run give @a[team=blue] diamond 1
#gold
execute if entity @s[type=iron_golem,tag=boss] on attacker if entity @s[team=gold] run give @a[team=gold] gunpowder 128
execute if entity @s[type=iron_golem,tag=boss] on attacker if entity @s[team=gold] run give @a[team=gold] diamond 1
execute if entity @s[type=iron_golem,tag=boss] on attacker run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@s"},{"text":" 擊殺了 §e礦物之神§7-§6桑尼哈提•卡門\n全體友軍獲得大量火藥、鑽石x1"}]

#封魔BOSS
#blue
execute if entity @s[type=ravager,tag=boss] on attacker if entity @s[team=blue] run effect give @a[team=blue] regeneration 300 1 false
execute if entity @s[type=ravager,tag=boss] on attacker if entity @s[team=blue] run effect give @a[team=blue] resistance 300 0 false
#gold
execute if entity @s[type=ravager,tag=boss] on attacker if entity @s[team=gold] run effect give @a[team=gold] regeneration 300 1 false
execute if entity @s[type=ravager,tag=boss] on attacker if entity @s[team=gold] run effect give @a[team=gold] resistance 300 0 false
execute if entity @s[type=ravager,tag=boss] on attacker run tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"selector":"@s"},{"text":" 擊殺了 §e封魔巨獸§7-§6伊薩爾•黑滅\n全體友軍獲得恢復I、抗性I 5分鐘"}]