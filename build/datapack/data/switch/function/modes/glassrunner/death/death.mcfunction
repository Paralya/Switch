
#> switch:modes/glassrunner/death/death
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/joined
#			switch:modes/glassrunner/start [ as @a[tag=!detached] & at @s ]
#			string in switch:modes/glassrunner/tick
#			switch:modes/glassrunner/start/team
#			switch:modes/glassrunner/end/process_end [ as @a[tag=!detached,sort=random] ]
#

clear @s snowball
clear @s arrow

effect clear @s

execute if entity @s[team=!switch.glassrunner.red,team=!switch.glassrunner.blue] run function switch:modes/glassrunner/death/random
execute if entity @s[team=switch.glassrunner.red] run function switch:modes/glassrunner/death/red
execute if entity @s[team=switch.glassrunner.blue] run function switch:modes/glassrunner/death/blue

function switch:modes/glassrunner/death/both

# Teleport to the team corner (explicit dimension + coords: the player respawns at world spawn,
# and spreadplayers silently failed there, leaving everyone in a death loop at 0 129 0)
execute if entity @s[team=switch.glassrunner.red] in switch:game run tp @s -3824.5 129 -1824.5 facing -3750 129 -1750
execute if entity @s[team=switch.glassrunner.blue] in switch:game run tp @s -3674.5 129 -1674.5 facing -3750 129 -1750
scoreboard players set @s switch.glassrunner.deathCount 0

effect give @s resistance infinite 255 true
effect give @s jump_boost infinite 3 true
effect give @s saturation infinite 255 true
effect give @s speed infinite 3 true

gamemode adventure @s

