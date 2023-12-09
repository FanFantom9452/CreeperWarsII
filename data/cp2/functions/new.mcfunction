#Made By Fan_Fan_tom
function hp_system:new
scoreboard objectives add command dummy "指令需要"
scoreboard players set 2 command 2
scoreboard players set 10 command 10
scoreboard objectives add command_timer dummy "指令專用計時器"
function cp2:type/status/lobby

scoreboard objectives add trigger trigger "文字觸發器"

scoreboard objectives add admin.page dummy "管理員頁面"

scoreboard players set MainCastle.MaxHp command 250
scoreboard players set SubCastle.MaxHp command 150
scoreboard players set Random.Game.Event command 90
scoreboard players set GoldOre.Respawn command 60
scoreboard players set EmeraldOre.Respawn command 180
scoreboard players set WildMonster.Respawn command 75
scoreboard players set MidMonster.Respawn command 40
scoreboard players set OreGod.Respawn command 300
scoreboard players set Isar.Respawn command 400
#中途加入遊戲 預設 開
scoreboard objectives add scenarios dummy "遊戲設定"
scoreboard players set Join.Midway scenarios 2

scoreboard objectives add kill playerKillCount "擊殺玩家運作"
scoreboard objectives add death deathCount "死亡運作"
scoreboard objectives add death_CD dummy "死亡冷卻"
scoreboard objectives add money dummy "金錢數量(火藥數量)"
scoreboard objectives setdisplay list money

scoreboard objectives add list dummy "§a§lCreeper §c§lWars §6§l§nII"
scoreboard objectives setdisplay sidebar list

scoreboard objectives add HP health {"text":"\u2764","color":"#FF1CB8"}
scoreboard objectives setdisplay below_name HP



scoreboard objectives add kit dummy "職業"
scoreboard objectives add rc minecraft.used:minecraft.carrot_on_a_stick "使用右鍵"
scoreboard objectives add CD.sword dummy "劍技CD"
scoreboard objectives add CD.axe dummy "斧技CD"
scoreboard objectives add CD.pickaxe dummy "搞技CD"
scoreboard objectives add CD.shovel dummy "鏟技CD"
scoreboard objectives add CD.hoe dummy "除技CD"


scoreboard objectives add final.kill dummy "總擊殺數"
scoreboard objectives add final.death dummy "總死亡數"
scoreboard objectives add final.atkCrp dummy "對苦力怕的輸出"
scoreboard objectives add final.atkAll dummy "總輸出傷害"
scoreboard objectives add final.defAll dummy "總扛傷害"
scoreboard objectives add tmp.atkDmg minecraft.custom:minecraft.damage_dealt "暫存攻擊傷害"
scoreboard objectives add tmp.atkDmg2 minecraft.custom:minecraft.damage_dealt_absorbed "暫存攻擊傷害"
scoreboard objectives add tmp.defDmg minecraft.custom:minecraft.damage_taken "暫存扛下傷害"
scoreboard objectives add tmp.defDmg2 minecraft.custom:minecraft.damage_absorbed "暫存扛下傷害"
scoreboard objectives add tmp.defDmg3 minecraft.custom:minecraft.damage_blocked_by_shield "暫存扛下傷害"

scoreboard objectives add furnace_timer dummy "熔爐計時器"
#upgrade
scoreboard objectives add upgrade.blue dummy "藍隊升級(科學家)"
scoreboard objectives add upgrade.gold dummy "金隊升級(科學家)"
#blue
scoreboard players set furnace.1 upgrade.blue 0
scoreboard players set furnace.2 upgrade.blue 0
scoreboard players set furnace.3 upgrade.blue 0
scoreboard players set shield.1 upgrade.blue 0
scoreboard players set beacon.1 upgrade.blue 0
scoreboard players set beacon.2 upgrade.blue 0
#gold
scoreboard players set furnace.1 upgrade.gold 0
scoreboard players set furnace.2 upgrade.gold 0
scoreboard players set furnace.3 upgrade.gold 0
scoreboard players set shield.1 upgrade.gold 0
scoreboard players set beacon.1 upgrade.gold 0
scoreboard players set beacon.2 upgrade.gold 0


scoreboard objectives add shop.atm dummy "是否點下提領金錢"
scoreboard objectives add current.money dummy "火藥數量"

scoreboard objectives add sneak.time dummy "蹲下時間"
scoreboard objectives add teleport.time dummy "傳送時間"



#Creeper Health
bossbar add blue_creeper_health "藍隊苦力怕血量"
bossbar set blue_creeper_health color blue
#Creeper Health
bossbar add gold_creeper_health "金隊苦力怕血量"
bossbar set gold_creeper_health color yellow

#設置隊伍
team add waiting "等待中"

team add spec "旁觀者"
team modify spec color gray


team add blue "藍隊"
team modify blue collisionRule never
team modify blue color aqua
team modify blue friendlyFire false

team add gold "金隊"
team modify gold collisionRule never
team modify gold color gold
team modify gold friendlyFire false

team add lv.1 "Lv.1"
team modify lv.1 prefix "§a[§fLv.1§a] "
team modify lv.1 friendlyFire false

team add lv.2 "Lv.2"
team modify lv.2 prefix "§e[§fLv.2§e] "
team modify lv.2 friendlyFire false

team add lv.3 "Lv.3"
team modify lv.3 prefix "§6[§fLv.3§6] "
team modify lv.3 friendlyFire false

team add lv.4 "Lv.4"
team modify lv.4 prefix "§c[§fLv.4§c] "
team modify lv.4 friendlyFire false

team add lv.5 "Lv.5"
team modify lv.5 prefix "§d[§cLv.§6§l§n5§r§d] "
team modify lv.5 friendlyFire false



#生成目標點(object)：
kill @e[type=area_effect_cloud,tag=object]
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["object"],Duration:2147483647}
#載入區塊，確保效果雲不會消失：
forceload add -1 -1 0 0

scoreboard objectives add particle_worker dummy "粒子效果運作器"
execute unless entity @e[tag=particle_a] run summon marker 0 0 0 {Tags:["particle_a"]}
execute unless entity @e[tag=particle_b] run summon marker 0 0 0 {Tags:["particle_b"]}
execute unless entity @e[tag=particle_c] run summon marker 0 0 0 {Tags:["particle_c"]}
execute unless entity @e[tag=particle_d] run summon marker 0 0 0 {Tags:["particle_d"]}


gamerule keepInventory true
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule doDaylightCycle false
time set 6000
gamerule naturalRegeneration true
gamerule disableRaids true
gamerule doInsomnia false
gamerule spawnRadius 0
gamerule doMobSpawning false
gamerule showDeathMessages true
gamerule doFireTick true

tellraw @a ["",{"text":"Creeper ","color":"green"},{"text":"Wars ","color":"red"},{"text":"II","bold":true,"color":"gold"},{"text":" | ","color":"gray"},{"text":"已成功更新指令包","color":"white"}]
playsound entity.experience_orb.pickup master @a ~ ~ ~ 100000 1 1