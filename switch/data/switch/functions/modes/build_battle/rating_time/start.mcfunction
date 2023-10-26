
# Change game state
scoreboard players set #build_battle_state switch.data 2
schedule function switch:modes/build_battle/rating_time/find_player 1t replace
execute as @a[tag=!switch.detached] at @s run playsound block.anvil.destroy ambient @s
clear @a[tag=!switch.detached]

# Tag every players to be able to rate their build
scoreboard players set @a[tag=!switch.detached,scores={switch.temp.id=0..}] switch.temp.to_rate 1

# Tellraw start + playsound
tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du temps imparti, rappel du thème : "},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":" !"}]

