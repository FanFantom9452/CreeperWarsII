#Made By Fan_Fan_tom
#情侶系統
execute if entity @s[tag=couple1,team=blue] run function cp2:type/work/couple/work_for_couple {team:"blue"}
execute if entity @s[tag=couple1,team=gold] run function cp2:type/work/couple/work_for_couple {team:"gold"}

#小三
execute if entity @s[tag=small3] run function cp2:type/work/couple/work_for_small3