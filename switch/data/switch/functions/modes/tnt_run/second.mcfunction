
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Classic timer
scoreboard players add #tnt_run_seconds switch.data 1
function switch:modes/tnt_run/xp_bar

# Start countdown
execute if score #tnt_run_seconds switch.data matches -5..0 as @a at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #tnt_run_seconds switch.data matches -5 run title @a title {"text":"5","color":"red"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a title {"text":"4","color":"red"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a title {"text":"3","color":"red"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a title {"text":"2","color":"red"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a title {"text":"1","color":"red"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a title {"text":"GO !","color":"red"}

