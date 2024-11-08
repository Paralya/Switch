
#> switch:modes/moutron/summon_kart
#
# @within	switch:modes/moutron/start
#

# Tag the current player to ride the new kart
tag @s add shopping_kart.owner

# Summon the kart depending on model score
scoreboard players add #next_model switch.data 1
execute if score #next_model switch.data matches 1 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:1}
execute if score #next_model switch.data matches 2 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:2}
execute if score #next_model switch.data matches 3 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:3}
execute if score #next_model switch.data matches 4 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:4}
execute if score #next_model switch.data matches 5 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:5}
execute if score #next_model switch.data matches 6 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:6}
execute if score #next_model switch.data matches 7 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:7}
execute if score #next_model switch.data matches 8 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:8}
execute if score #next_model switch.data matches 9 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:9}
execute if score #next_model switch.data matches 10 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:10}
execute if score #next_model switch.data matches 11 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:11}
execute if score #next_model switch.data matches 12 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:12}
execute if score #next_model switch.data matches 13 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:13}
execute if score #next_model switch.data matches 14 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:14}
execute if score #next_model switch.data matches 15 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:15}
execute if score #next_model switch.data matches 15 run scoreboard players set #next_model switch.data 0

# Apply init functions to new kart
scoreboard players reset #model shopping_kart.data
execute as @e[tag=shopping_kart.new_kart] at @s run function shopping_kart:kart/switch_model/init_functions

# Remove the temporary player tag
tag @s remove shopping_kart.owner

