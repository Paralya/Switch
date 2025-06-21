
#> switch:player/trigger/rating/main
#
# @within	switch:player/trigger/main
#

# Display & Actions
execute if score @s switch.trigger.rating matches 1 run function switch:player/trigger/rating/display
execute if score @s switch.trigger.rating matches 100.. run function switch:player/trigger/rating/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s switch.trigger.rating 0

