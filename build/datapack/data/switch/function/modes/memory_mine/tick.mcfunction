
#> switch:modes/memory_mine/tick
#
# @within	switch:modes/memory_mine/calls/tick
#

scoreboard players add #memory_mine_ticks switch.data 1

# No drop system
execute as @e[type=item,tag=!switch.checked] run function switch:modes/memory_mine/no_drop

# Give mines and decrease cooldown timer
give @a[scores={switch.temp.cooldown=1}] tnt[custom_data={switch:{memory_mine:true}},consumable={consume_seconds:1024}]
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1

# Mine tick
execute as @e[type=marker,tag=switch.mine] at @s run function switch:modes/memory_mine/mine_tick

# Unknown death
function switch:utils/on_death_run_function {function:"switch:modes/memory_mine/death"}

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=adventure]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/memory_mine/process_end
execute if score #memory_mine_seconds switch.data matches 300.. run function switch:modes/memory_mine/process_end

