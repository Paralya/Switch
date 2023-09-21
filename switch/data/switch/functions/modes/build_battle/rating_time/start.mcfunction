
# Change game state
scoreboard players set #build_battle_state switch.data 2
schedule function switch:modes/build_battle/rating_time/find_player 1t replace
execute as @a at @s run playsound block.anvil.destroy ambient @s
clear @a

# Tag every players to be able to rate their build
scoreboard players set @a[scores={switch.temp.id=0..}] switch.temp.to_rate 1

# Tellraw start + playsound
tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le thème choisi est "},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":" !"}]

