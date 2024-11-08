
#> switch:modes/minigolf/record_save
#
# @within	switch:modes/minigolf/process_end with storage switch:records minigolf
#

# Get username
loot replace entity @s hotbar.0 loot switch:get_username

# Get last record on the map (shots and time)
scoreboard players set #record switch.data 100000
scoreboard players set #time switch.data 100000
$execute if data storage switch:records minigolf.$(current_map) store result score #record switch.data run data get storage switch:records minigolf.$(current_map).shots
$execute if data storage switch:records minigolf.$(current_map) store result score #time switch.data run data get storage switch:records minigolf.$(current_map).time

# Check if it's better
execute if score #min switch.data < #record switch.data run scoreboard players set #new_record switch.data 1
execute if score #min switch.data = #record switch.data if score @s switch.alive < #time switch.data run scoreboard players set #new_record switch.data 1

# If it's better, save it
$execute if score #new_record switch.data matches 1 store result storage switch:records minigolf.$(current_map).shots int 1 run scoreboard players get #min switch.data
$execute if score #new_record switch.data matches 1 store result storage switch:records minigolf.$(current_map).time int 1 run scoreboard players get @s switch.alive
$execute if score #new_record switch.data matches 1 run data modify storage switch:records minigolf.$(current_map).player set from entity @s Inventory[0].components."minecraft:profile".name
execute if score #new_record switch.data matches 1 as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
$execute if score #new_record switch.data matches 1 run function switch:modes/minigolf/record_tellraw_macro with storage switch:records minigolf.$(current_map)

