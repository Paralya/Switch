
# Detect if linked player is missing

scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.id = @s switch.id
execute store success score #success switch.data run tag @a[tag=!switch.detached,scores={switch.alive=1..},predicate=switch:has_same_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 run tp @s @p[tag=switch.temp]
execute if score #success switch.data matches 1 run data modify entity @s data.Inventory set from entity @p[tag=switch.temp] Inventory

tag @a[tag=!switch.detached] remove switch.temp

