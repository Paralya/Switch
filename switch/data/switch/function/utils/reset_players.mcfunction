
# Attributes
execute as @a[tag=!detached] run function switch:utils/reset_attributes

# Gamemode
execute unless score #set_spec switch.data matches 1 run gamemode adventure @a[tag=!detached]
execute if score #set_spec switch.data matches 1 run gamemode spectator @a[tag=!detached]
scoreboard players reset #set_spec switch.data

# Clear inventory (if /disable, clear only players that doesn't have convention.debug tag)
execute unless score #disable switch.data matches 1 run clear @a[tag=!detached]
execute if score #disable switch.data matches 1 run clear @a[tag=!detached,tag=!convention.debug]

# Other stuff
team empty switch.no_pvp
spawnpoint @a 0 70 0
xp set @a[tag=!detached] 0 levels
xp set @a[tag=!detached] 0 points
effect clear @a[tag=!detached]
team leave @a[tag=!detached]

