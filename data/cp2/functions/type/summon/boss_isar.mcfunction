#Made By Fan_Fan_tom

summon ravager ~ ~1.5 ~ {PersistenceRequired:1b,Tags:["boss","isar"],CustomName:'{"text":"§e封魔巨獸§7-§6伊薩爾•黑滅"}',Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:3}]}
#Reset Boss Respawn CD
scoreboard players operation @s command_timer = Isar.Respawn command
execute if score 戰爭階段 list matches 4.. run scoreboard players operation @s command_timer /= 2 command