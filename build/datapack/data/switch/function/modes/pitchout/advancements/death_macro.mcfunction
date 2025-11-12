
#> switch:modes/pitchout/advancements/death_macro
#
# @within	switch:modes/pitchout/advancements/on_death with storage switch:temp input
#
# @args		my_id (int)
#			attacker_id (int)
#

$data modify storage switch:temp pitchout[{id:$(my_id)}].killed_by append value {id:$(attacker_id)}
$execute if score @s switch.alive matches 0 run function switch:modes/pitchout/advancements/harcele_verif {my_id:$(my_id)}

