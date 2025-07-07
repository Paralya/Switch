
#> switch:modes/fireblast/tick
#
# @within	switch:modes/fireblast/calls/tick
#

scoreboard players add #fireblast_ticks switch.data 1

# Death system
execute as @a[tag=!detached,gamemode=!spectator] at @s if entity @s[y=0,dy=105] run function switch:modes/fireblast/death
function switch:utils/on_death_run_function {function:"switch:modes/fireblast/death"}

# Fireball
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] if score @s switch.temp.cooldown matches 1.. at @s run function switch:modes/fireblast/fireball/no_cooldown
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] unless score @s switch.temp.cooldown matches 1.. at @s run function switch:modes/fireblast/fireball/right_click
execute as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] at @s run function switch:modes/fireblast/explode_tnt
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
execute as @a[tag=!detached,gamemode=!spectator] run function switch:modes/fireblast/xp_bar

# Handle power-up
scoreboard players remove @a[scores={switch.temp.reload_boost=1..}] switch.temp.reload_boost 1
execute as @a[tag=!detached,gamemode=!spectator] if items entity @s container.* *[custom_data~{switch:{power_up:true}}] at @s run function switch:modes/fireblast/got_power_up

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #fireblast_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/fireblast/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/fireblast/process_end

