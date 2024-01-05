
# Normal display
execute if score @s switch.trigger.rating matches 1 run function switch:player/trigger/rating/display

# Handle action
execute if score @s switch.trigger.rating matches 100.. run function switch:player/trigger/rating/action

# Reset
scoreboard players set @s switch.trigger.rating 0

