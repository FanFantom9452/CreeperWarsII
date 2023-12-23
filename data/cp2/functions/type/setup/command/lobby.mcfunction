summon marker ~ ~ ~ {Tags:["lobby","setup"]}
tellraw @a "大廳設定完成"
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1

execute if block ~ ~-1 ~ barrier run fill ~14 ~-1 ~14 ~-14 ~5 ~-14 barrier outline
execute if block ~ ~-1 ~ barrier run fill ~14 ~5 ~14 ~-14 ~5 ~-14 air


setblock ~ ~ ~ air