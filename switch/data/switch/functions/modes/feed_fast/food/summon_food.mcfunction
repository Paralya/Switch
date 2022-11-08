function switch:math/get_random_2/

execute if score #random switch.data matches 0 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:apple",Count:1b},Glowing:1b}
execute if score #random switch.data matches 1 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:dried_kelp",Count:1b},Glowing:1b}
execute if score #random switch.data matches 2 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:golden_apple",Count:1b}}
execute if score #random switch.data matches 3 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:golden_carrot",Count:1b}}
execute if score #random switch.data matches 4 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:cookie",Count:1b}}
execute if score #random switch.data matches 5 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:cooked_beef",Count:1b},Glowing:1b}
execute if score #random switch.data matches 6 run summon item ~ ~0.015 ~ {Item:{id:"minecraft:rabbit_stew",Count:1b},Glowing:1b}

# 1 chances sur 9 de j=tomber sur la roulette russe :D
execute if score #random switch.data matches 7 if predicate switch:chance/0.1 run effect give @r[tag=switch.alive] poison 1 3 true

# 1 chances sur 9 de rien donner
