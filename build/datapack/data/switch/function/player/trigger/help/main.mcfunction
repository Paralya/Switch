
#> switch:player/trigger/help/main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#			switch:player/tutorial/second
#

# Tutorial stuff
execute if score @s switch.tutorial matches 5 run scoreboard players set @s switch.tutorial 6

function switch:translations/player_trigger_help_

scoreboard players set @s switch.trigger.help 0

