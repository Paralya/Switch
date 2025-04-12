
# Indicate to the mine that it just killed a player
scoreboard players set #success switch.data 1

# Grant advancement if player stepped on their own mine
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] if score @s switch.id = #owner_id switch.data run advancement grant @s only switch:visible/36

# Effect and particles on the death spot, and increment death stats
execute if entity @s[gamemode=!spectator] run particle explosion ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if entity @s[gamemode=!spectator] run particle dust{color:[0.66,0.33,0.0],scale:4.0} ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if entity @s[gamemode=!spectator] run playsound switch:explosion ambient @a[distance=..50]
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1


## Death message
# Tag the owner of the mine
execute as @a[tag=!detached] if score @s switch.id = #owner_id switch.data run tag @s add switch.owner
# Send tellraw
function switch:translations/modes_memory_mine_death
# Remove the owner tag
tag @a[tag=switch.owner] remove switch.owner


# Spectator and other stuff
gamemode spectator @s
effect clear @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
clear @s

