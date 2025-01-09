
# If less than 10% are zombies, double the damage
execute store result score #current_human_count switch.data if entity @a[tag=!detached,team=switch.temp.human]
scoreboard players operation #percentage switch.data = #current_zombie_count switch.data
scoreboard players operation #percentage switch.data *= #100 switch.data
scoreboard players operation #percentage switch.data /= #current_human_count switch.data
execute if score #percentage switch.data matches ..10 run scoreboard players operation #damage switch.data *= #2 switch.data

