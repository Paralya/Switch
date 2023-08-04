
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #gay_shooter_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #gay_shooter_seconds switch.data matches 0.. run function switch:modes/gay_shooter/xp_bar
execute if score #gay_shooter_seconds switch.data matches 0.. run effect give @a[tag=switch.gay_shooter.spectre] resistance infinite 0 true
execute if score #gay_shooter_seconds switch.data matches 0 run function switch:modes/gay_shooter/roles/announcement

execute if score #gay_shooter_seconds switch.data matches 30 run tellraw @a[tag=switch.gay_shooter.spectre] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
execute if score #gay_shooter_seconds switch.data matches 30 as @a[tag=switch.gay_shooter.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

