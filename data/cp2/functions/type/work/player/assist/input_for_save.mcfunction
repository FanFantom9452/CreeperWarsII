#Made By Fan_Fan_tom
#助攻系統
#存入雙方資料
data remove storage cp2:assist attackerID
data remove storage cp2:assist playerID

#say saved

execute store result storage cp2:assist attackerID int 1 on attacker run scoreboard players get @s playerID
execute store result storage cp2:assist playerID int 1 run scoreboard players get @s playerID
function cp2:type/work/player/assist/save with storage cp2:assist




