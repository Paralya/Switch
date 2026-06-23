
#> switch:modes/fish_fight/stop
#
# @within	switch:modes/fish_fight/calls/stop
#

function switch:modes/_common/remove_movement_objectives
scoreboard objectives remove switch.temp.axolotl_killed
scoreboard objectives remove switch.temp.kills
scoreboard objectives remove switch.temp.axolotl_killed_const
scoreboard objectives remove switch.temp.deathCooldown
scoreboard objectives remove switch.temp.placed_white
scoreboard objectives remove switch.temp.placed_blue
scoreboard objectives remove switch.temp.placed_red

team remove switch.temp.red
team remove switch.temp.blue
team remove switch.temp.green
team remove switch.temp.yellow

data remove storage switch:temp fish_fight

