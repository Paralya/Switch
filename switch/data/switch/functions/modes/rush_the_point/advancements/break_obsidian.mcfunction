
advancement revoke @s only switch:rush_the_point/break_obsidian
scoreboard players reset @s switch.temp.break_obsidian
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"rush_the_point"} run function switch:modes/rush_the_point/advancements/break_obsidian_confirm

