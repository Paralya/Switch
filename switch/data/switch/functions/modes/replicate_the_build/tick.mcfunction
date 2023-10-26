
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #replicate_the_build_ticks switch.data 1


execute if score #rtb_round_state switch.data matches 9 run function switch:modes/replicate_the_build/process_end
execute if score #rtb_round_state switch.data matches 8 run function switch:modes/replicate_the_build/round/8
execute if score #rtb_round_state switch.data matches 7 run function switch:modes/replicate_the_build/round/7

execute if score #rtb_round_state switch.data matches 6 run function switch:modes/replicate_the_build/round/6
execute if score #rtb_round_state switch.data matches 6 run function switch:modes/replicate_the_build/round/6
execute if score #rtb_round_state switch.data matches 6 run function switch:modes/replicate_the_build/round/6

execute if score #rtb_round_state switch.data matches 5 run function switch:modes/replicate_the_build/round/5
execute if score #rtb_round_state switch.data matches 4 run function switch:modes/replicate_the_build/round/4


execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/replicate_the_build/death


# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=!detached,scores={switch.alive=1..}] unless score #rtb_round_state switch.data matches 9 run function switch:modes/replicate_the_build/process_end
#execute if score #replicate_the_build_seconds switch.data matches 600.. run function switch:modes/replicate_the_build/process_end

