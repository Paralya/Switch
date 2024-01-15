
# Get max
scoreboard players set #int switch.data 0
scoreboard players set #digits switch.data 0
execute store result score #int switch.data run data get storage switch:main copy[0].int
execute store result score #digits switch.data run data get storage switch:main copy[0].digits
tellraw @s ["",{"text":"#int = "},{"score":{"name":"#int","objective":"switch.data"}},{"text":" #digits = "},{"score":{"name":"#digits","objective":"switch.data"}}]
tellraw @s ["",{"text":"#max_int = "},{"score":{"name":"#max_int","objective":"switch.data"}},{"text":" #max_digits = "},{"score":{"name":"#max_digits","objective":"switch.data"}}]
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run tell Stoupy51 max 
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run data modify storage switch:main max set from storage switch:main copy[0]
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run scoreboard players operation #max_int switch.data = #int switch.data
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run scoreboard players operation #max_digits switch.data = #digits switch.data

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/rating/get_max_loop

