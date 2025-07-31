
#> switch:player/trigger/rating/main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#

# Display & Actions
execute if score @s switch.trigger.rating matches 1 run function switch:player/trigger/rating/display
execute if score @s switch.trigger.rating matches 100.. run function switch:player/trigger/rating/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s switch.trigger.rating 0

