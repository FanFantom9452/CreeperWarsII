#Made By Fan_Fan_tom
advancement revoke @s only cp2:player_hurt_sniffer
execute store result score r.int command run random value 1..100

execute unless score 戰爭階段 list matches -2147483648..2147483647 if score r.int command matches 1..2 run damage @s 1 mob_attack by @e[type=sniffer,tag=mid_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 0..1 if score r.int command matches 1..5 run damage @s 5 mob_attack by @e[type=sniffer,tag=mid_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 2 if score r.int command matches 1..45 run damage @s 2 mob_attack by @e[type=sniffer,tag=mid_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 3 if score r.int command matches 1..35 run damage @s 3 mob_attack by @e[type=sniffer,tag=mid_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 4 if score r.int command matches 1..20 run damage @s 4 mob_attack by @e[type=sniffer,tag=mid_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 5.. if score r.int command matches 1..15 run damage @s 4.5 mob_attack by @e[type=sniffer,tag=mid_monster,sort=nearest,limit=1,distance=..5]