#Made By Fan_Fan_tom
#設鄧怪物最大血量
#Default
scoreboard players set @s maxhp 20

#主堡苦力怕血量
execute if entity @s[type=creeper,tag=main_castle_creeper] run scoreboard players operation @s maxhp = MainCastle.MaxHp command
#守護者苦力怕血量
execute if entity @s[type=creeper,tag=sub_castle_creeper] run scoreboard players operation @s maxhp = SubCastle.MaxHp command

#野怪血量
execute if entity @s[type=llama,tag=wild_monster,team=lv.1] run scoreboard players set @s maxhp 20
execute if entity @s[type=llama,tag=wild_monster,team=lv.2] run scoreboard players set @s maxhp 28
execute if entity @s[type=llama,tag=wild_monster,team=lv.3] run scoreboard players set @s maxhp 35
execute if entity @s[type=llama,tag=wild_monster,team=lv.4] run scoreboard players set @s maxhp 45
execute if entity @s[type=llama,tag=wild_monster,team=lv.5] run scoreboard players set @s maxhp 60

#吸吸怪血量
execute if entity @s[type=sniffer,tag=mid_monster,team=lv.1] run scoreboard players set @s maxhp 70
execute if entity @s[type=sniffer,tag=mid_monster,team=lv.2] run scoreboard players set @s maxhp 80
execute if entity @s[type=sniffer,tag=mid_monster,team=lv.3] run scoreboard players set @s maxhp 90
execute if entity @s[type=sniffer,tag=mid_monster,team=lv.4] run scoreboard players set @s maxhp 100
execute if entity @s[type=sniffer,tag=mid_monster,team=lv.5] run scoreboard players set @s maxhp 100


#礦物BOSS
execute if entity @s[type=iron_golem,tag=boss] run scoreboard players set @s maxhp 175
#封魔BOSS
execute if entity @s[type=ravager,tag=boss] run scoreboard players set @s maxhp 250


#設定滿血
scoreboard players operation @s hp = @s maxhp