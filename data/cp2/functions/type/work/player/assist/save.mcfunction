#Made By Fan_Fan_tom
#助攻系統
#將雙方的資料存進 cp2:assist.玩家ID
$data modify storage cp2:assist.$(playerID) attackerID append value $(attackerID)
#紀錄最後攻擊玩家
$scoreboard players set @s lastAttackerID $(attackerID)
#統計扛傷
function cp2:type/work/player/operation/def {object:"tmp.defDmg"}
function cp2:type/work/player/operation/def {object:"tmp.defDmg2"}
function cp2:type/work/player/operation/def {object:"tmp.defDmg3"}