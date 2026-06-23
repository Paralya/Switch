
#> switch:modes/capture_the_flag/score_point
#
# @executed	positioned ~ ~-2 ~
#
# @within	switch:modes/capture_the_flag/flag_tick [ positioned ~ ~-2 ~ ]
#

# Tellraw + sound + fireworks
function switch:modes/capture_the_flag/translations/score_point
function switch:modes/_common/flag/score_fireworks

# Teleport the scorer back to spawn
execute if entity @s[tag=switch.blue_flag] as @p[tag=switch.has_blue_flag] run function switch:modes/capture_the_flag/teleport_to_spawn
execute if entity @s[tag=switch.red_flag] as @p[tag=switch.has_red_flag] run function switch:modes/capture_the_flag/teleport_to_spawn

# Reset the flag
function switch:modes/capture_the_flag/flag_reset

