#Made By Fan_Fan_tom
scoreboard players add @s hp 1
execute anchored eyes run function cp2:type/summon/text/green_text {text:1}
$function cp2:type/work/tick_worker/creeper_health_bossbar_update {team:"$(team)",who:"main_castle_creeper",HurtTime:0s}

