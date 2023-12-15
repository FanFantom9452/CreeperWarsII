#Made By Fan_Fan_tom
#助攻系統
#計算被多少人打過 要給他們助攻+1
#提取
$execute store result score #tmp_attackerID playerID run data get storage cp2:assist.$(deathPlayerID) attackerID[0]
#運作
execute as @a if score @s playerID = #tmp_attackerID playerID run tag @s add assist.target
say @a[tag=assist.target] is attacker
#刪除
$data remove storage cp2:assist.$(deathPlayerID) attackerID[0]
#判定是否要遞迴
$execute store result score #result_loop_amount playerID run data get storage cp2:assist.$(deathPlayerID) attackerID[0]
$execute if score #result_loop_amount playerID matches 1.. run function cp2:type/work/player/assist/result {deathPlayerID:$(deathPlayerID)}

#抓取完所有人一次把所有人的助攻+1
#擊殺者不得獲得助攻
scoreboard players operation #tmp lastAttackerID = @s lastAttackerID
execute as @a[tag=assist.target] if score @s playerID = #tmp lastAttackerID run tag @s remove assist.target
scoreboard players add @a[tag=assist.target] final.assist 1
tellraw @a[tag=assist.target] ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | 您協助擊殺 ","color":"gray"},{"selector":"@s"},{"text":" 獲得助攻","color":"gray"}]
say add @a[tag=assist.target] final assist
tag @a[tag=assist.target] remove assist.target
#刪除容器
$data remove storage cp2:assist.$(deathPlayerID) attackerID
scoreboard players reset #tmp lastAttackerID