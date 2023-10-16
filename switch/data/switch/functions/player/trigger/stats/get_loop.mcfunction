
# Prepare compound
$data modify storage switch:main temp set value {Name:"$(Name)",count:0}
$scoreboard players add @s switch.stats.played.$(id) 0
$execute store result storage switch:main temp.count int 1 run scoreboard players get @s switch.stats.played.$(id)
data modify storage switch:main stats append from storage switch:main temp

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_loop with storage switch:main copy[0]

