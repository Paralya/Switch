
#> switch:player/trigger/coupdetat/main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#

# Display & Actions
execute if score @s switch.trigger.coupdetat matches 1 run function switch:player/trigger/coupdetat/display
execute if score @s switch.trigger.coupdetat matches 100.. run function switch:player/trigger/coupdetat/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s switch.trigger.coupdetat 0

