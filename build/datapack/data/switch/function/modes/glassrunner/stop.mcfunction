
#> switch:modes/glassrunner/stop
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/calls/stop [ positioned 3000 128 3000 ]
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

