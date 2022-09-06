
#Detect if linked player is missing

scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
execute store success score #success switch.data run tag @a[tag=switch.alive,predicate=switch:has_same_temp_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 store result score @s switch.temp.posX run data get entity @p[tag=switch.temp] Pos[0] 1000
execute if score #success switch.data matches 1 store result score @s switch.temp.posY run data get entity @p[tag=switch.temp] Pos[1] 1000
execute if score #success switch.data matches 1 store result score @s switch.temp.posZ run data get entity @p[tag=switch.temp] Pos[2] 1000

tag @a remove switch.temp

