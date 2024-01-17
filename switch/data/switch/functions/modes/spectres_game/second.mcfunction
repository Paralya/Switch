
scoreboard players add #spectres_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #spectres_game_seconds switch.data matches 0.. run function switch:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds switch.data matches 0.. run effect give @a[tag=!detached,team=switch.temp.spectre] resistance infinite 0 true
execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement

execute if score #spectres_game_seconds switch.data matches 30 run tellraw @a[tag=!detached,team=switch.temp.spectre] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
execute if score #spectres_game_seconds switch.data matches 30 as @a[tag=!detached,team=switch.temp.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

# Alternance des scoreboard damage et kills

scoreboard players operation #temp switch.data = #spectres_game_seconds switch.data
scoreboard players operation #temp switch.data %= 20 switch.data
execute if score #temp switch.data matches 0 run scoreboard objectives setdisplay sidebar switch.temp.damages
execute if score #temp switch.data matches 10 run scoreboard objectives setdisplay sidebar switch.temp.kills


# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true

