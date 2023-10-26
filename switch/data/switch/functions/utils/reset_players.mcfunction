
execute as @a run attribute @s generic.armor base set 0.0
execute as @a run attribute @s generic.max_health base set 20.0
execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.movement_speed base set 0.1
execute as @a run attribute @s generic.armor_toughness base set 0.0
execute as @a run attribute @s generic.attack_damage base set 1.0
execute unless score #set_spec switch.data matches 1 run gamemode adventure @a[tag=!convention.debug]
execute if score #set_spec switch.data matches 1 run gamemode spectator @a[tag=!convention.debug]
scoreboard players reset #set_spec switch.data
clear @a[tag=!convention.debug]
team empty switch.no_pvp
spawnpoint @a 0 75 0
xp set @a 0 levels
xp set @a 0 points
effect clear @a
team leave @a


