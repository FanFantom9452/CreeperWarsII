#Made By Fan_Fan_tom
#苦力怕受傷血量顯示 / 苦力怕受傷通知
#blue
$execute if entity @s[nbt={HurtTime:$(HurtTime)},tag=blue,tag=sub_castle_creeper] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"sub_castle_creeper",HurtTime:$(HurtTime)}
$execute if entity @s[nbt={HurtTime:$(HurtTime)},tag=blue,tag=main_castle_creeper] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"blue",who:"main_castle_creeper",HurtTime:$(HurtTime)}
#gold
$execute if entity @s[nbt={HurtTime:$(HurtTime)},tag=gold,tag=sub_castle_creeper] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"sub_castle_creeper",HurtTime:$(HurtTime)}
$execute if entity @s[nbt={HurtTime:$(HurtTime)},tag=gold,tag=main_castle_creeper] run function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"gold",who:"main_castle_creeper",HurtTime:$(HurtTime)}