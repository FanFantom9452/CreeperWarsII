#Made By Fan_Fan_tom
item replace entity @s hotbar.0 with command_block{display:{Name:'{"text":"大廳","color":"yellow","italic":false}',Lore:['{"text":"玩家等待的大廳","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/lobby"}} 1
item replace entity @s hotbar.1 with command_block{display:{Name:'{"text":"重生點","color":"yellow","italic":false}',Lore:['{"text":"雙方玩家的重生點","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/spawnpoint"}} 1
item replace entity @s hotbar.2 with command_block{display:{Name:'{"text":"死亡冷卻點","color":"yellow","italic":false}',Lore:['{"text":"雙方玩家死亡等待重生的地方","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/spawn_cd_point"}} 1
item replace entity @s hotbar.3 with command_block{display:{Name:'{"text":"主堡苦力怕","color":"yellow","italic":false}',Lore:['{"text":"雙方的主堡苦力怕","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/main_castle_creeper"}} 1
item replace entity @s hotbar.4 with command_block{display:{Name:'{"text":"守護塔苦力怕","color":"yellow","italic":false}',Lore:['{"text":"雙方的守護者苦力怕","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/sub_castle_creeper"}} 1
item replace entity @s hotbar.5 with command_block{display:{Name:'{"text":"中心點","color":"yellow","italic":false}',Lore:['{"text":"中心點 決定中央戰場的位置","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/mid"}} 1


item replace entity @s hotbar.6 with gold_ingot{display:{Name:'{"text":"設置為金隊","color":"gold","italic":false}',Lore:['{"text":"把我丟在附近的設定點 即可將該設定為金隊專屬","color":"white","italic":false}']}} 64
item replace entity @s hotbar.7 with diamond{display:{Name:'{"text":"設置為藍隊","color":"aqua","italic":false}',Lore:['{"text":"把我丟在附近的設定點 即可將該設定為藍隊專屬","color":"white","italic":false}']}} 64
item replace entity @s hotbar.8 with bedrock{display:{Name:'{"text":"刪除附近的設定點","color":"red","italic":false}',Lore:['{"text":"把我丟在附近的設定點 即可刪除","color":"white","italic":false}']}} 64


item replace entity @s inventory.0 with command_block{display:{Name:'{"text":"食物商人","color":"yellow","italic":false}',Lore:['{"text":"專門販售食物的商人","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/shop_food"}} 1
item replace entity @s inventory.1 with command_block{display:{Name:'{"text":"建材商人","color":"yellow","italic":false}',Lore:['{"text":"專門販售建材的商人","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/shop_build"}} 1
item replace entity @s inventory.2 with command_block{display:{Name:'{"text":"防具鍛造師","color":"yellow","italic":false}',Lore:['{"text":"專門販售防具的商人","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/shop_armor"}} 1
item replace entity @s inventory.3 with command_block{display:{Name:'{"text":"附魔師","color":"yellow","italic":false}',Lore:['{"text":"專門販售防具的商人","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/shop_enchanter"}} 1
item replace entity @s inventory.4 with command_block{display:{Name:'{"text":"科學家","color":"yellow","italic":false}',Lore:['{"text":"專門販售奇怪的東西","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/shop_scientist"}} 1


item replace entity @s inventory.7 with command_block{display:{Name:'{"text":"傳送陣(A點)","color":"yellow","italic":false}',Lore:['{"text":"可以讓玩家從A點傳送至B點的法陣","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/teleport_a"}} 1
item replace entity @s inventory.8 with command_block{display:{Name:'{"text":"傳送陣(B點)","color":"yellow","italic":false}',Lore:['{"text":"可以讓玩家從A點傳送至B點的法陣","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/teleport_b"}} 1



item replace entity @s inventory.9 with command_block{display:{Name:'{"text":"野怪生成點","color":"yellow","italic":false}',Lore:['{"text":"擊殺後可以獲得5等經驗值、少量火藥","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/wild_monster"}} 1
item replace entity @s inventory.10 with command_block{display:{Name:'{"text":"金礦生成點","color":"yellow","italic":false}',Lore:['{"text":"設置一個會重生的金礦","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/gold_ore"}} 1
item replace entity @s inventory.11 with command_block{display:{Name:'{"text":"綠寶石礦生成點","color":"yellow","italic":false}',Lore:['{"text":"設置一個會重生的綠寶石礦","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/emerald_ore"}} 1

item replace entity @s inventory.18 with command_block{display:{Name:'{"text":"礦物之神BOSS生成點","color":"yellow","italic":false}',Lore:['{"text":"打死後會給予全隊金錢上的支援","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/boss_ore_god"}} 1
item replace entity @s inventory.19 with command_block{display:{Name:'{"text":"封魔巨獸BOSS生成點","color":"yellow","italic":false}',Lore:['{"text":"打死後能夠解放自身被封印的力量","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:type/setup/command/boss_isar"}} 1











item replace entity @s inventory.26 with command_block{display:{Name:'{"text":"設定完畢","color":"green","italic":false}',Lore:['{"text":"確定都設定完畢後 把我放在地板上","color":"white","italic":false}']},BlockEntityTag:{auto:1b,Command:"/function cp2:new"}} 1

