
#> switch:modes/_coupdetat/process_end
#
# @within	switch:modes/_coupdetat/tick
#

# 1 = boss killed (success)
# 2 = player died (failure)
# 3 = time expired (failure)
# Tellraw and playsound if successful or not
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound minecraft:item.totem.use ambient @s
execute if score #process_end switch.data matches 1 as @p[tag=switch.coupdetat] run function switch:translations/modes__coupdetat_process_end
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run scoreboard players set #add_override switch.money 50
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 as @p[tag=switch.coupdetat] run function switch:engine/add_money

# Delete bossbar and regenerate map
execute if score #process_end switch.data matches 100 run bossbar remove switch:coupdetat
execute if score #process_end switch.data matches 100 run function switch:maps/survival/coupdetat/regenerate

# Launch the game mode
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 1 run scoreboard players set #no_force_start_msg switch.data 1
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 1 run function switch:engine/force_start_macro with storage switch:main coupdetat

# Launch the usual vote routine
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 2.. run function switch:engine/restart

