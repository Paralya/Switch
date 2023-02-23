
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #kart_racer_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. if entity @a[gamemode=adventure] run scoreboard players remove #remaining_time switch.data 1

execute if score #kart_racer_seconds switch.data matches -5 run title @a title {"text":"5","color":"red"}
execute if score #kart_racer_seconds switch.data matches -4 run title @a title {"text":"4","color":"red"}
execute if score #kart_racer_seconds switch.data matches -3 run title @a title {"text":"3","color":"red"}
execute if score #kart_racer_seconds switch.data matches -2 run title @a title {"text":"2","color":"red"}
execute if score #kart_racer_seconds switch.data matches -1 run title @a title {"text":"1","color":"red"}
execute if score #kart_racer_seconds switch.data matches 0 run title @a title {"text":"GO !","color":"green"}

execute if score #kart_racer_seconds switch.data matches -5..-1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 100
execute if score #kart_racer_seconds switch.data matches 0 at @e[limit=2] as @a at @s run playsound item.goat_horn.sound.0 ambient @s ^ ^ ^5 100 1 1

execute if score #kart_racer_seconds switch.data matches 0.. run function switch:modes/kart_racer/xp_bar
execute if score #detect_end switch.data matches 0 if score #remaining_time switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 unless entity @a[tag=switch.playing] run scoreboard players set #detect_end switch.data 1

## Classement
function switch:modes/kart_racer/classement/

