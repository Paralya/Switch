
# Classic timer
scoreboard players add #moutron_seconds switch.data 1


# Start countdown
execute if score #moutron_seconds switch.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #moutron_seconds switch.data matches -5 run title @a[tag=!detached] title {"text":"5","color":"red"}
execute if score #moutron_seconds switch.data matches -4 run title @a[tag=!detached] title {"text":"4","color":"red"}
execute if score #moutron_seconds switch.data matches -3 run title @a[tag=!detached] title {"text":"3","color":"red"}
execute if score #moutron_seconds switch.data matches -2 run title @a[tag=!detached] title {"text":"2","color":"red"}
execute if score #moutron_seconds switch.data matches -1 run title @a[tag=!detached] title {"text":"1","color":"red"}
execute if score #moutron_seconds switch.data matches 0 run title @a[tag=!detached] title {"text":"GO !","color":"red"}

# Increase markers life_time
execute if score #moutron_seconds switch.data matches 0.. run scoreboard players add #life_time switch.data 3

# XP bar
function switch:modes/moutron/xp_bar

