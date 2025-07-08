
# #detect_end switch.data = 1 is successful, #detect_end switch.data = 2 is unsuccessful
# Tellraw and playsound if successful or not
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound minecraft:item.totem.use ambient @s
execute if score #process_end switch.data matches 1 as @p[tag=switch.coupdetat] run function switch:translations/modes__coupdetat_process_end

# Delete bossbar and regenerate map
execute if score #process_end switch.data matches 100 run bossbar remove switch:coupdetat
execute if score #process_end switch.data matches 100 run function switch:maps/survival/coupdetat/regenerate

# Launch the game mode
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 1 run function switch:engine/restart

# Launch the usual vote routine
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 2.. run function switch:engine/restart

