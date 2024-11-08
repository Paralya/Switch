
#> switch:modes/glassrunner/stop
#
# @within	switch:modes/glassrunner/calls/stop
#

scoreboard objectives remove switch.glassrunner.money
scoreboard objectives remove switch.glassrunner.deathCount
scoreboard objectives remove switch.glassrunner.use_snowball
scoreboard objectives remove switch.glassrunner.display
team remove switch.glassrunner.blue
team remove switch.glassrunner.red
team remove switch.glassrunner.p_red
team remove switch.glassrunner.p_blue
scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0

kill @e[tag=switch.glassrunner.money_maker]

