
#> switch:modes/fish_fight/stop
#
# @within	switch:modes/fish_fight/calls/stop
#

scoreboard objectives remove switch.temp.damages
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.old_x
scoreboard objectives remove switch.temp.old_z
scoreboard objectives remove switch.temp.blocks_run
scoreboard objectives remove switch.temp.axolotl_killed
scoreboard objectives remove switch.temp.kills
scoreboard objectives remove switch.temp.axolotl_killed_const
scoreboard objectives remove switch.temp.deathCooldown

team remove switch.temp.red
team remove switch.temp.blue
team remove switch.temp.green
team remove switch.temp.yellow

data remove storage switch:temp fish_fight

