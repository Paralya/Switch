
#Speed up engine to progressively (32/3000)
scoreboard players add @s switch.temp.engine 32
execute if score @s switch.temp.engine > @s switch.temp.max_engine run scoreboard players operation @s switch.temp.engine = @s switch.temp.max_engine

tag @s remove switch.speed_up

