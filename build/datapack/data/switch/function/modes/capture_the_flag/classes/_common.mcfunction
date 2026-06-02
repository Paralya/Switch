
#> switch:modes/capture_the_flag/classes/_common
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/archer
#			switch:modes/capture_the_flag/classes/chemister
#			switch:modes/capture_the_flag/classes/demolisher
#			switch:modes/capture_the_flag/classes/tank
#			switch:modes/capture_the_flag/classes/warrior
#

clear @s
effect clear @s
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet[dyed_color=16711680]
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet[dyed_color=255]

