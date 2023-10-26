
execute as @a[tag=!switch.detached] run attribute @s generic.armor base set 0.0
execute as @a[tag=!switch.detached] run attribute @s generic.max_health base set 20.0
execute as @a[tag=!switch.detached] run attribute @s generic.attack_speed base set 4.0
execute as @a[tag=!switch.detached] run attribute @s generic.movement_speed base set 0.1
execute as @a[tag=!switch.detached] run attribute @s generic.armor_toughness base set 0.0
execute as @a[tag=!switch.detached] run attribute @s generic.attack_damage base set 1.0
execute unless score #set_spec switch.data matches 1 run gamemode adventure @a[tag=!switch.detached]
execute if score #set_spec switch.data matches 1 run gamemode spectator @a[tag=!switch.detached]
scoreboard players reset #set_spec switch.data
clear @a[tag=!switch.detached,tag=!convention.debug]
team empty switch.no_pvp
spawnpoint @a[tag=!switch.detached] 0 75 0
xp set @a[tag=!switch.detached] 0 levels
xp set @a[tag=!switch.detached] 0 points
effect clear @a[tag=!switch.detached]
team leave @a[tag=!switch.detached]


