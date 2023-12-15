#Made By Fan_Fan_tom
#科學家升級
#blue furnace
$execute if entity @s[nbt={Inventory:[{id:"minecraft:smoker",tag:{upgrade:1b}}]},team=$(team)] run function cp2:type/work/upgrade/trigger {target:"furnace.1",team:"$(team)",text:"升級熔爐",level:"I",amount:5}
$execute if entity @s[nbt={Inventory:[{id:"minecraft:blast_furnace",tag:{upgrade:2b}}]},team=$(team)] run function cp2:type/work/upgrade/trigger {target:"furnace.2",team:"$(team)",text:"升級熔爐",level:"II",amount:8}
$execute if entity @s[nbt={Inventory:[{id:"minecraft:furnace",tag:{upgrade:3b}}]},team=$(team)] run function cp2:type/work/upgrade/trigger {target:"furnace.3",team:"$(team)",text:"升級熔爐",level:"III",amount:12}
#$(team) shield
$execute if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{upgrade:1b}}]},team=$(team)] run function cp2:type/work/upgrade/trigger {target:"shield.1",team:"$(team)",text:"強化防禦",level:"I",amount:3}
#$(team) beacon
$execute if entity @s[nbt={Inventory:[{id:"minecraft:nether_star",tag:{upgrade:1b}}]},team=$(team)] run function cp2:type/work/upgrade/trigger {target:"beacon.1",team:"$(team)",text:"治癒之泉",level:"I",amount:2}
$execute if entity @s[nbt={Inventory:[{id:"minecraft:beacon",tag:{upgrade:2b}}]},team=$(team)] run function cp2:type/work/upgrade/trigger {target:"beacon.2",team:"$(team)",text:"治癒之泉",level:"II",amount:15}
