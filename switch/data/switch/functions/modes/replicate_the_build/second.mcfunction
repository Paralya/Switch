
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #replicate_the_build_seconds switch.data 1


execute if score #rtb_round_state switch.data matches 3 run function switch:modes/replicate_the_build/round/3
execute if score #rtb_round_state switch.data matches 2 run function switch:modes/replicate_the_build/round/2
execute if score #rtb_round_state switch.data matches 1 run function switch:modes/replicate_the_build/round/1
execute if score #rtb_round_state switch.data matches 0 run function switch:modes/replicate_the_build/round/0

