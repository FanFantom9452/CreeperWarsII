#Made By Fan_Fan_tom
clear @s #cp2:all{clear:1b}


item replace entity @s inventory.0 with barrier{clear:1b,display:{Name:'{"text": "§c退出管理員模式"}',Lore:['{"text": "§7點我離開管理員設定"}']}}
item replace entity @s inventory.1 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.2 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.3 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.4 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.5 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.6 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
execute if score Join.Midway scenarios matches 0 run item replace entity @s inventory.7 with nether_star{clear:1b,display:{Name:'{"text": "§b中途加入遊戲 §7: §c關閉"}',Lore:['{"text": "§7後續登入的玩家是否可以自行加入"}']}}
execute if score Join.Midway scenarios matches 1 run item replace entity @s inventory.7 with nether_star{clear:1b,display:{Name:'{"text": "§b中途加入遊戲 §7: §a開啟"}',Lore:['{"text": "§7後續登入的玩家是否可以自行加入"}']}}
item replace entity @s inventory.8 with minecraft:oak_hanging_sign{clear:1b,display:{Name:'{"text":"§e第§6 1 §e頁"}'}}


item replace entity @s inventory.9 with light_gray_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.10 with light_blue_wool{clear:1b,display:{Name:'{"text": "§b加入藍隊"}',Lore:['{"text": "§7自己加入藍隊"}']}}
item replace entity @s inventory.11 with orange_wool{clear:1b,display:{Name:'{"text": "§b加入金隊"}',Lore:['{"text": "§7自己加入金隊"}']}}
item replace entity @s inventory.12 with light_gray_wool{clear:1b,display:{Name:'{"text": "§b加入旁觀者"}',Lore:['{"text": "§7自己加入旁觀者"}']}}
item replace entity @s inventory.13 with turtle_helmet{clear:1b,display:{Name:'{"text": "§a隨機分隊"}',Lore:['{"text": "§7點我進行隨機分隊"}']}}
item replace entity @s inventory.14 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.15 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.16 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.17 with light_gray_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}


item replace entity @s inventory.18 with light_gray_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.19 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.20 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.21 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.22 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.23 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.24 with black_stained_glass_pane{clear:1b,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.25 with lime_wool{clear:1b,display:{Name:'{"text": "§a開始遊戲"}',Lore:['{"text": "§7點我開始遊戲"}']}}
item replace entity @s inventory.26 with paper{clear:1b,display:{Name:'{"text": "下一頁","color": "#B8B3FF"}'}}


