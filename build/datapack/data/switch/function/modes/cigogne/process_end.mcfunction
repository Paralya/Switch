
#> switch:modes/cigogne/process_end
#
# @within	switch:modes/cigogne/tick
#

function switch:modes/_common/process_end/winner_by_health {death:"switch:utils/classic_death"}

# Advancement
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.kill
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.temp.kill=1..}] if score #max switch.data = @s switch.temp.kill run advancement grant @s only switch:visible/23

execute if score #process_end switch.data matches 200 run function switch:engine/restart

