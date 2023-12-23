#Made By Fan_Fan_tom
item replace entity @s enderchest.0 with grass_block{display:{Name:'{"text":"§a平凡人"}',Lore:['{"text":"§7 "}','{"text":"§7職業介紹 : "}','{"text":"§7各項能力值都非常平均的角色"}','{"text":"§7因為平凡，所以處處可見"}','{"text":"§7也因為平凡，才更加的努力將每個能力都學會"}','{"text":"§7打拼了一輩子才發現，成為了一位【平凡人】"}','{"text":"§7 "}','{"text":"§e被動技§7-§6平凡之怒"}','{"text":"§f重生冷卻固定為 20 秒"}','{"text":"§7 "}','{"text":"§c武器限制 §7: §f無"}']},kit:0,choose_kit_item:1b,HideFlags:255,clear:1b} 1












execute if score @s kit matches 0 run item modify entity @s enderchest.0 cp2:ender_chest/chooseed
execute if score @s kit matches 1 run item modify entity @s enderchest.1 cp2:ender_chest/chooseed
execute if score @s kit matches 2 run item modify entity @s enderchest.2 cp2:ender_chest/chooseed

execute unless score @s kit matches 0 run item modify entity @s enderchest.0 cp2:ender_chest/unchoose
execute unless score @s kit matches 1 run item modify entity @s enderchest.1 cp2:ender_chest/unchoose
execute unless score @s kit matches 2 run item modify entity @s enderchest.2 cp2:ender_chest/unchoose

