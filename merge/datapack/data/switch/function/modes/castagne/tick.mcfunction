
scoreboard players add #castagne_ticks switch.data 1

## Death system
function switch:utils/on_death_run_function {function:"switch:modes/castagne/death"}

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect give @s glowing 2 255 true
execute as @a[tag=!detached,gamemode=survival] at @s if entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect clear @s glowing

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.temp.kill=1..,switch.temp.cooldown_kill=1..}] only switch:visible/9
scoreboard players set @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.cooldown_kill 200
scoreboard players remove @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.kill 1
scoreboard players remove @a[tag=!detached,scores={switch.temp.cooldown_kill=1..}] switch.temp.cooldown_kill 1

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #castagne_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/castagne/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/castagne/process_end

