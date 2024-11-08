
#> switch:modes/one_shot/tick
#
# @within	switch:modes/one_shot/calls/tick
#

scoreboard players add #one_shot_ticks switch.data 1

# Prevent drop
execute as @e[type=item,tag=!switch.checked] run function switch:modes/one_shot/no_drop

# Custom Saturation & Mort
execute as @a[tag=!detached] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true
function switch:utils/on_death_run_function {function:"switch:modes/one_shot/death"}

# Cooldown invincibilité
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air


## Détection de fin de partie
execute if score #winner switch.data matches 0 if entity @a[tag=!detached,scores={switch.temp.kills=30..}] run scoreboard players set #winner switch.data 1
execute if score #winner switch.data matches 1 run function switch:modes/one_shot/process_end
execute if score #one_shot_seconds switch.data matches 600.. run function switch:modes/one_shot/process_end

