#Made By Fan_Fan_tom

#重生點 產生資源
execute if entity @s[tag=spawnpoint] run function cp2:type/work/furnace

#死亡CD運作
execute if entity @s[tag=spawn_cd_point] run scoreboard players remove @a[scores={death_CD=1..},distance=..5,gamemode=adventure] death_CD 1
execute if entity @s[tag=spawn_cd_point] as @a[scores={death_CD=1..},distance=..5,gamemode=adventure] run title @s actionbar ["",{"text":"死亡重生冷卻 "},{"score":{"name":"@s","objective":"death_CD"},"bold":true,"underlined":true,"color":"gold"},{"text":" 秒"}]
execute if entity @s[tag=spawn_cd_point] run effect give @a[scores={death_CD=1..},distance=..5,gamemode=adventure] resistance 5 4 true
execute if entity @s[tag=spawn_cd_point] as @a[scores={death_CD=0},distance=..5,gamemode=adventure] run function cp2:type/work/player/respawn


#傳送陣告知
execute if entity @s[tag=teleport_a,tag=blue] run title @a[team=blue,distance=..2,gamemode=!spectator] actionbar "靠近蹲下來使用傳送陣"
execute if entity @s[tag=teleport_a,tag=gold] run title @a[team=gold,distance=..2,gamemode=!spectator] actionbar "靠近蹲下來使用傳送陣"


#金礦重生
execute if entity @s[tag=gold_ore] unless score @s command_timer matches -2147483648..2147483647 run scoreboard players operation @s command_timer = GoldOre.Respawn command
execute if entity @s[tag=gold_ore] if block ~ ~ ~ bedrock run scoreboard players remove @s command_timer 1
execute if entity @s[tag=gold_ore] if block ~ ~ ~ bedrock store result storage cp2:gold_ore text int 1 run scoreboard players get @s command_timer
execute if entity @s[tag=gold_ore] if block ~ ~ ~ bedrock run function cp2:type/summon/text/white_text with storage cp2:gold_ore

execute if entity @s[tag=gold_ore] if score @s command_timer matches 0 run setblock ~ ~ ~ gold_ore
execute if entity @s[tag=gold_ore] if score @s command_timer matches 0 run scoreboard players operation @s command_timer = GoldOre.Respawn command


#綠寶石礦重生
execute if entity @s[tag=emerald_ore] unless score @s command_timer matches -2147483648..2147483647 run scoreboard players operation @s command_timer = EmeraldOre.Respawn command
execute if entity @s[tag=emerald_ore] if block ~ ~ ~ bedrock run scoreboard players remove @s command_timer 1
execute if entity @s[tag=emerald_ore] if block ~ ~ ~ bedrock store result storage cp2:emerald_ore text int 1 run scoreboard players get @s command_timer
execute if entity @s[tag=emerald_ore] if block ~ ~ ~ bedrock run function cp2:type/summon/text/white_text with storage cp2:emerald_ore

execute if entity @s[tag=emerald_ore] if score @s command_timer matches 0 run setblock ~ ~ ~ emerald_ore
execute if entity @s[tag=emerald_ore] if score @s command_timer matches 0 run scoreboard players operation @s command_timer = EmeraldOre.Respawn command



#野怪重生
execute if entity @s[tag=wild_monster] unless score @s command_timer matches -2147483648..2147483647 run scoreboard players operation @s command_timer = WildMonster.Respawn command
execute if entity @s[tag=wild_monster] unless entity @e[type=llama,tag=wild_monster,distance=..6] run scoreboard players remove @s command_timer 1
execute if entity @s[tag=wild_monster] unless entity @e[type=llama,tag=wild_monster,distance=..6] store result storage cp2:wild_monster text int 1 run scoreboard players get @s command_timer
execute if entity @s[tag=wild_monster] unless entity @e[type=llama,tag=wild_monster,distance=..6] run function cp2:type/summon/text/white_text with storage cp2:wild_monster
execute if entity @s[tag=wild_monster] if score @s command_timer matches 0 run function cp2:type/summon/wild_monster
execute if entity @s[tag=wild_monster] if score @s command_timer matches 0 run scoreboard players operation @s command_timer = WildMonster.Respawn command


#吸吸怪重生
execute if entity @s[tag=mid] unless score @s command_timer matches -2147483648..2147483647 run scoreboard players operation @s command_timer = MidMonster.Respawn command
execute if entity @s[tag=mid] unless entity @e[type=sniffer,tag=mid_monster,distance=..50] run scoreboard players remove @s command_timer 1
execute if entity @s[tag=mid] unless entity @e[type=sniffer,tag=mid_monster,distance=..50] store result storage cp2:mid_monster text int 1 run scoreboard players get @s command_timer
execute if entity @s[tag=mid] unless entity @e[type=sniffer,tag=mid_monster,distance=..50] run function cp2:type/summon/text/white_text with storage cp2:mid_monster
execute if entity @s[tag=mid] if score @s command_timer matches 0 run function cp2:type/summon/mid_monster
execute if entity @s[tag=mid] if score @s command_timer matches 0 run scoreboard players operation @s command_timer = MidMonster.Respawn command



#礦物BOSS重生
execute if entity @s[tag=boss_ore_god] unless score @s command_timer matches -2147483648..2147483647 run scoreboard players operation @s command_timer = OreGod.Respawn command
execute if entity @s[tag=boss_ore_god] unless entity @e[type=iron_golem,tag=boss,distance=..50] run scoreboard players remove @s command_timer 1
execute if entity @s[tag=boss_ore_god] unless entity @e[type=iron_golem,tag=boss,distance=..50] store result storage cp2:boss_ore_god text int 1 run scoreboard players get @s command_timer
execute if entity @s[tag=boss_ore_god] unless entity @e[type=iron_golem,tag=boss,distance=..50] run function cp2:type/summon/text/white_text with storage cp2:boss_ore_god
execute if entity @s[tag=boss_ore_god] if score @s command_timer matches 0 run function cp2:type/summon/boss_ore_god


#封魔BOSS重生
execute if entity @s[tag=boss_isar] unless score @s command_timer matches -2147483648..2147483647 run scoreboard players operation @s command_timer = Isar.Respawn command
execute if entity @s[tag=boss_isar] unless entity @e[type=ravager,tag=boss,distance=..50] run scoreboard players remove @s command_timer 1
execute if entity @s[tag=boss_isar] unless entity @e[type=ravager,tag=boss,distance=..50] store result storage cp2:boss_isar text int 1 run scoreboard players get @s command_timer
execute if entity @s[tag=boss_isar] unless entity @e[type=ravager,tag=boss,distance=..50] run function cp2:type/summon/text/white_text with storage cp2:boss_isar
execute if entity @s[tag=boss_isar] if score @s command_timer matches 0 run function cp2:type/summon/boss_isar
execute if entity @s[tag=boss_isar] if score @s command_timer matches 0 run scoreboard players operation @s command_timer = Isar.Respawn command
execute if score 戰爭階段 list matches 4.. if entity @s[tag=boss_isar] if score @s command_timer matches 0 run scoreboard players operation @s command_timer /= 2 command



#科學家 家裡回血
execute if score beacon.1 upgrade.blue matches 1 if entity @s[tag=main_castle_creeper,tag=blue] run effect give @a[team=blue,distance=..10] regeneration 10 0 true
execute if score beacon.1 upgrade.gold matches 1 if entity @s[tag=main_castle_creeper,tag=gold] run effect give @a[team=gold,distance=..10] regeneration 10 0 true

