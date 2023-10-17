
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #simultaneous_jump_ticks switch.data 1

## Global tick
execute as @e[type=player,gamemode=adventure,predicate=switch:in_water] at @s run function switch:modes/simultaneous_jump/done
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/simultaneous_jump/death

## Fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/simultaneous_jump/process_end

