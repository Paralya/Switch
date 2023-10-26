
scoreboard players add #spectres_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #spectres_game_seconds switch.data matches 0.. run function switch:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds switch.data matches 0.. run effect give @a[tag=!switch.detached,team=switch.temp.spectre] resistance infinite 0 true
execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement

execute if score #spectres_game_seconds switch.data matches 30 run tellraw @a[tag=!switch.detached,team=switch.temp.spectre] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
execute if score #spectres_game_seconds switch.data matches 30 as @a[tag=!switch.detached,team=switch.temp.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

