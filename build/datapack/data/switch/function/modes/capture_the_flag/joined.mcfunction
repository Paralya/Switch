
#> switch:modes/capture_the_flag/joined
#
# @within	switch:modes/capture_the_flag/calls/joined
#

tag @s remove switch.has_blue_flag
tag @s remove switch.has_red_flag
execute if score #reconnect switch.data matches 0 run function switch:modes/capture_the_flag/roles/main
function switch:translations/common/joined_reconnect
execute if score #reconnect switch.data matches 1 run function switch:modes/capture_the_flag/teleport_to_spawn

