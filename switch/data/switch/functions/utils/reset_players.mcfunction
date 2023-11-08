
# Attributes
execute as @a[tag=!detached] run attribute @s generic.armor base set 0.0
execute as @a[tag=!detached] run attribute @s generic.max_health base set 20.0
execute as @a[tag=!detached] run attribute @s generic.attack_speed base set 4.0
execute as @a[tag=!detached] run attribute @s generic.movement_speed base set 0.1
execute as @a[tag=!detached] run attribute @s generic.armor_toughness base set 0.0
execute as @a[tag=!detached] run attribute @s generic.attack_damage base set 1.0
execute as @a[tag=!detached] run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1
execute as @a[tag=!detached] run attribute @s minecraft:generic.max_health modifier remove 1-1-1-1-2

# Gamemode
execute unless score #set_spec switch.data matches 1 run gamemode adventure @a[tag=!detached]
execute if score #set_spec switch.data matches 1 run gamemode spectator @a[tag=!detached]
scoreboard players reset #set_spec switch.data

# Clear inventory (if /disable, clear only players that doesn't have convention.debug tag)
execute unless score #disable switch.data matches 1 run clear @a[tag=!detached]
execute if score #disable switch.data matches 1 run clear @a[tag=!detached,tag=!convention.debug]

# Other stuff
team empty switch.no_pvp
spawnpoint @a[tag=!detached] 0 75 0
xp set @a[tag=!detached] 0 levels
xp set @a[tag=!detached] 0 points
effect clear @a[tag=!detached]
team leave @a[tag=!detached]

