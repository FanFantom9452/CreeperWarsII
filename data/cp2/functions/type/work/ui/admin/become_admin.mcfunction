#Made By Fan_Fan_tom
gamemode adventure @s
tag @s add admin
tellraw @s ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"打開背包進行遊戲設定§7(不建議在創造模式下進行設定,若有需要創造模式 請再次輸入)","color":"white"}]
function cp2:type/work/ui/admin/set
scoreboard players set @s admin.page 1