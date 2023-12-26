
$say debug : $(my_id) $(attacker_id)
$data modify storage switch:temp pitchout[{id:$(my_id)}].killed_by append value {id:$(attacker_id)}
$execute if score @s switch.alive matches 0 switch.data run function switch:modes/pitchout/advancement/harcele_verif {my_id:$(my_id)}

