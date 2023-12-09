#Made By Fan_Fan_tom

$execute store result score Random.Game.Event.r command run random value $(min)..$(max)
execute store result storage cp2:random_game_event r int 1 run scoreboard players get Random.Game.Event.r command
function cp2:type/work/event/random_game_event with storage cp2:random_game_event

scoreboard players set RandomGameEvent command_timer 0