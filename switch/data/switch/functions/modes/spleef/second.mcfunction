
# Classic timer
scoreboard players add #spleef_seconds switch.data 1
execute if score #spleef_seconds switch.data matches 0 as @a at @s run function switch:modes/spleef/give_items

# Border reduction
execute if score #spleef_seconds switch.data matches 30 run function switch:modes/spleef/border_reduction/setup

