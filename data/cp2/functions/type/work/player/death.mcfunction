#Made By Fan_Fan_tom
gamemode adventure @s
execute if score 戰爭階段 list matches 0.. run scoreboard players add @s death_CD 2
execute if score 戰爭階段 list matches 1.. run scoreboard players add @s death_CD 8
execute if score 戰爭階段 list matches 2.. run scoreboard players add @s death_CD 5
execute if score 戰爭階段 list matches 3.. run scoreboard players add @s death_CD 10
execute if score 戰爭階段 list matches 4.. run scoreboard players add @s death_CD 10
execute if score 戰爭階段 list matches 5.. run scoreboard players add @s death_CD 10
scoreboard players reset @s death
scoreboard players add @s final.death 1