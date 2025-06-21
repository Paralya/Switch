
execute if score #reconnect switch.data matches 0 run function switch:modes/rush_the_point/roles/main
function switch:translations/modes_rush_the_flag_joined
execute if score #reconnect switch.data matches 1 run function switch:modes/rush_the_point/teleport_to_spawn
tag @s remove switch.has_blue_flag
tag @s remove switch.has_red_flag

