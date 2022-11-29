
execute unless score #state switch.data matches 3 run time set 18000
execute unless score #state switch.data matches 3 run tp @a 0 0 0
scoreboard players set #state switch.data 0
scoreboard players set #cut_clean switch.data 0

clear @a
effect clear @a
gamemode spectator @a
xp set @a 0 points
xp set @a 0 levels
attribute @s generic.attack_speed base set 4.0
kill @e[type=marker,tag=switch.selected_map]
worldborder set 59999968
worldborder center 0 0
spawnpoint @a 0 74 0
scoreboard objectives setdisplay list switch.money
function switch:maps/regenerate_map
execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.max_health base set 20.0

function #switch:events/stop

