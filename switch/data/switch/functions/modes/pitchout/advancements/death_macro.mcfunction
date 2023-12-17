
scoreboard players set #success switch.data 0
$execute unless data storage switch:temp pitchout[{id:$(my_id)}].killed_by[{id:$(attacker_id)}] run scoreboard players set #success switch.data 1
$execute if score #success switch.data matches 1 run data modify storage switch:temp pitchout[{id:$(my_id)}].killed_by append value {id:$(attacker_id)}
$execute if score #success switch.data matches 1 if score @s switch.alive matches 0 switch.data run function switch:modes/pitchout/advancement/harcele_verif {my_id:$(my_id)}

