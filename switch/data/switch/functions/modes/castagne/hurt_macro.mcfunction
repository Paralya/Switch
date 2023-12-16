
scoreboard players set #success switch.data 0
$execute unless data storage switch:temp castagne[{id:$(attacker_id)}].hurt[{id:$(my_id)}] run scoreboard players set #success switch.data 1
$execute if score #success switch.data matches 1 run data modify storage switch:temp castagne[{id:$(attacker_id)}].hurt append value {id:$(my_id)}
$execute if score #success switch.data matches 1 store result score #count switch.data run data get storage switch:temp castagne[{id:$(attacker_id)}].hurt
execute if score #success switch.data matches 1 if score #count switch.data = #initial_count switch.data on attacker run advancement grant @s only switch:visible/29

