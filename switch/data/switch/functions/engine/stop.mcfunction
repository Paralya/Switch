
execute unless score #state switch.data matches 3 run tp @a 0 0 0
scoreboard players set #state switch.data 0

clear @a
effect clear @a
gamemode spectator @a
xp set @a 0 points
xp set @a 0 levels
attribute @s generic.attack_speed base set 4.0

function #switch:events/stop

