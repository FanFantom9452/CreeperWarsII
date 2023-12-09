#Made By Fan_Fan_tom

summon iron_golem ~ ~1.5 ~ {PersistenceRequired:1b,PlayerCreated:0b,Tags:["boss","ore_god"],CustomName:'{"text":"§e礦物之神§7-§6桑尼哈提•卡門"}',Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:3}],AngerTime:2147483647}
#Reset Boss Respawn CD
scoreboard players operation @s command_timer = OreGod.Respawn command
execute if score 戰爭階段 list matches 4.. run scoreboard players operation @s command_timer /= 2 command