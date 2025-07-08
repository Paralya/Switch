
# Timers and xp bar
scoreboard players add #coupdetat_ticks switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/_coupdetat/xp_bar

# Detect death system
function switch:utils/on_death_run_function {function:"switch:utils/classic_death"}

# Every 10 seconds, a realistic explosion on the boss
scoreboard players operation #modulo_explosion switch.data = #coupdetat_ticks switch.data
scoreboard players operation #modulo_explosion switch.data %= #200 switch.data
execute if score #modulo_explosion switch.data matches 50 at @n[tag=switch.coupdetat.boss] run function realistic_explosion:explode

# Set the boss as owner of the wolf and set the angry target
data modify entity @n[tag=switch.coupdetat.stoupy] Owner set from entity @n[tag=switch.coupdetat.boss] UUID
data modify entity @n[tag=switch.coupdetat.stoupy] AngryAt set from entity @p[tag=!detached] UUID
loot replace entity @n[tag=switch.coupdetat.boss] weapon loot switch:i/solarium_sword

# Store boss health in the bossbar
execute store result bossbar switch:coupdetat value run data get entity @n[tag=switch.coupdetat.boss] Health

## End game
execute if score #coupdetat_ticks switch.data matches ..50 run return 0
execute if score #detect_end switch.data matches 0 unless entity @n[tag=switch.coupdetat.boss] run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 unless entity @p[tag=!detached,gamemode=survival] run scoreboard players set #detect_end switch.data 2
execute if score #detect_end switch.data matches 0 if score #remaining_time switch.data matches ..0 run scoreboard players set #detect_end switch.data 3
execute if score #detect_end switch.data matches 1.. run function switch:modes/_coupdetat/process_end

