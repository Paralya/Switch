
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #build_battle_ticks switch.data 1

## Global tick
# For each marker, place the correct template
execute as @e[tag=switch.build_battle_marker] at @s run function switch:modes/build_battle/tick_marker

# Clear everyones inventory while the theme vote is running
execute if score #build_battle_state switch.data matches 0 run clear @a

# Kill unexpected entities
kill @e[type=end_crystal]
kill @e[type=ender_pearl]
kill @e[type=enderman]
kill @e[type=fireball]
kill @e[type=wither]
kill @e[type=allay]
kill @e[type=vex]
kill @e[type=tnt]


## Fin de partie
# TODO

