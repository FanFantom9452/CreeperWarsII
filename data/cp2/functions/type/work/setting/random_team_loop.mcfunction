#Made By Fan_Fan_tom
team join blue @r[team=waiting]
team join gold @r[team=waiting]
execute unless entity @a[team=waiting] run tellraw @a ["",{"text":"Creeper","color":"green"},{"text":" Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"\u96a8\u6a5f\u5206\u968a\u5b8c\u7562"}]
execute unless entity @a[team=waiting] as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute if entity @a[team=waiting] run function cp2:type/work/setting/random_team_loop
