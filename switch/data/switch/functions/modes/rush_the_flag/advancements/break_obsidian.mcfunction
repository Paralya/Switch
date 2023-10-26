
advancement revoke @s only switch:rush_the_flag/break_obsidian
scoreboard players reset @s switch.temp.break_obsidian
execute if data storage switch:main {current_game:"rush_the_flag"} run function switch:modes/rush_the_flag/advancements/break_obsidian_confirm

