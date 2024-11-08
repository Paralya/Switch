
# Timer
scoreboard players add #kart_racer_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. if entity @a[tag=!detached,gamemode=adventure] run scoreboard players remove #remaining_time switch.data 1

# Start countdown
function switch:translations/modes_kart_racer_second

# Start sounds
execute if score #kart_racer_seconds switch.data matches -5..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 100
execute if score #kart_racer_seconds switch.data matches 0 at @e[limit=2] as @a[tag=!detached] at @s run playsound item.goat_horn.sound.0 ambient @s ^ ^ ^5 100 1 1
execute if score #kart_racer_seconds switch.data matches 0 at @r[tag=!detached] run scoreboard players operation #default switch.hard_respawn_cp_id = @n[tag=switch.checkpoint] switch.temp.id

# XP bar and gravity fix
execute if score #kart_racer_seconds switch.data matches 0.. run function switch:modes/kart_racer/xp_bar
execute if score #kart_racer_seconds switch.data matches 0.. as @a[tag=!detached] run attribute @s gravity base set 0.08


# Détection de fin de partie
execute if score #detect_end switch.data matches 0 if score #remaining_time switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 unless entity @a[scores={switch.alive=1}] run scoreboard players set #detect_end switch.data 1

## Classement
function switch:modes/kart_racer/classement/

