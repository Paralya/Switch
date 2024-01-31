
$data modify storage switch:temp fish_fight[{id:$(my_id)}].killed_by append value {id:$(attacker_id)}
$execute if score @s switch.alive matches 0 run function switch:modes/fish_fight/advancements/harcele_verif {my_id:$(my_id)}

