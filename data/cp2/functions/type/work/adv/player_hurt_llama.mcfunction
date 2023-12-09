#Made By Fan_Fan_tom
advancement revoke @s only cp2:player_hurt_llama
execute unless score 戰爭階段 list matches -2147483648..2147483647 run damage @s 1 mob_attack by @e[type=llama,tag=wild_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 0..1 run damage @s 1 mob_attack by @e[type=llama,tag=wild_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 2 run damage @s 2 mob_attack by @e[type=llama,tag=wild_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 3 run damage @s 3 mob_attack by @e[type=llama,tag=wild_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 4 run damage @s 4 mob_attack by @e[type=llama,tag=wild_monster,sort=nearest,limit=1,distance=..5]
execute if score 戰爭階段 list matches 5.. run damage @s 5 mob_attack by @e[type=llama,tag=wild_monster,sort=nearest,limit=1,distance=..5]