
# Prepare compound
$data modify storage switch:main temp set value {Name:"$(Name)",count:0,wins:0,winrate:0}
$execute store result storage switch:main temp.count int 1 run scoreboard players get @s switch.stats.played.$(id)
$execute store result storage switch:main temp.wins int 1 run scoreboard players get @s switch.stats.wins.$(id)
execute store result score #winrate switch.data run data get storage switch:main temp.wins 100
$scoreboard players operation #winrate switch.data /= @s switch.stats.played.$(id)
execute store result storage switch:main temp.winrate int 1 run scoreboard players get #winrate switch.data
data modify storage switch:main stats append from storage switch:main temp

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_loop with storage switch:main copy[0]

