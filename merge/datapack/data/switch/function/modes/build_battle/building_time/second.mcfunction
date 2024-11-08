
# Show timer + current theme
scoreboard players remove #remaining_time switch.data 1
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data

# When 1m30 remains, the players can vote to increase the time for 5 minutes (if 75% of the players vote yes), voting time is 30 seconds
execute if score #remaining_time switch.data matches 90 run scoreboard players set @a[tag=!detached] switch.temp.theme_vote 0
execute if score #remaining_time switch.data matches 90 run scoreboard players enable @a[tag=!detached] switch.temp.theme_vote
execute if score #remaining_time switch.data matches 90 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 60 run function switch:modes/build_battle/building_time/check_increase_time

# Remaining time warning
execute if score #remaining_time switch.data matches 120 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 60 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 10 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 5 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 4 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 3 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches 2 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
function switch:translations/modes_build_battle_building_time_second
execute if score #remaining_time switch.data matches 1 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time switch.data matches ..0 run function switch:modes/build_battle/rating_time/start

