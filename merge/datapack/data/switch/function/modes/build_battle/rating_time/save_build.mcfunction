
# Save the temporary build at this position
place template switch:temp

# Add a sign with the player's name
setblock 0 5 0 yellow_shulker_box destroy
execute as @p[scores={switch.temp.to_rate=2}] run loot insert 0 5 0 loot switch:get_username
setblock ~19 ~29 ~19 barrier
data modify storage switch:main input set value {theme:"",username:""}
data modify storage switch:main input.theme set from storage switch:main current_theme.en
data modify storage switch:main input.username set from block 0 5 0 Items[0].components."minecraft:profile".name
function switch:modes/build_battle/rating_time/macro_sign with storage switch:main input
setblock 0 5 0 air

# Check if the current player is the best so far
scoreboard players set #max switch.data 0
scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
scoreboard players set #best switch.data 0
execute as @p[scores={switch.temp.to_rate=2}] if score #max switch.data = @s switch.temp.points run scoreboard players set #best switch.data 1

# If player is not the best, remove the marker
execute if score #best switch.data matches 0 run forceload remove ~-16 ~-16 ~48 ~48
execute if score #best switch.data matches 0 run kill @s

# Else, change marker tags
execute if score #best switch.data matches 1 run kill @e[type=marker,tag=switch.build_battle.best]
execute if score #best switch.data matches 1 run data modify entity @s Tags set value ["switch.build_battle.best"]

