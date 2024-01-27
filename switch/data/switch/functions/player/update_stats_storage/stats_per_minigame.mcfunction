
## storage switch:stats all run data modify storage switch:stats all set value {
# player:{
# 	total_played:[{name:"Stoupy51",value:0}],
# 	total_wins:[{name:"Stoupy51",value:0}],
# 	total_kills:[{name:"Stoupy51",value:0}],
# 	total_deaths:[{name:"Stoupy51",value:0}],
# 	total_money:[{name:"Stoupy51",value:0}],
# 	played_win_ratio:[{name:"Stoupy51",value:0}],
# 	advancement_count:[{name:"Stoupy51",value:0}],
# },
# modes:{
#	pitch_creep:{total_games:0,played:[],wins:[],played_win_ratio:[]},
# }}

# Set number of games played and wins
$execute unless data storage switch:stats all.modes.$(id).played[{name:"$(player)"}] run data modify storage switch:stats all.modes.$(id).played append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.modes.$(id).played[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.played.$(id)
$execute unless data storage switch:stats all.modes.$(id).wins[{name:"$(player)"}] run data modify storage switch:stats all.modes.$(id).wins append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.modes.$(id).wins[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.wins.$(id)
$execute unless data storage switch:stats all.modes.$(id).played_win_ratio[{name:"$(player)"}] run data modify storage switch:stats all.modes.$(id).played_win_ratio append value {name:"$(player)",value:0}
$scoreboard players operation #temp switch.data = $(player) switch.stats.wins.$(id)
scoreboard players operation #temp switch.data *= #100000 switch.data
$scoreboard players operation #temp switch.data /= $(player) switch.stats.played.$(id)
$execute unless score $(player) switch.stats.played.$(id) matches 5.. run scoreboard players set #temp 0
$execute store result storage switch:stats all.modes.$(id).played_win_ratio[{name:"$(player)"}].value float 0.001 run scoreboard players get #temp switch.data

# Advancement
$execute if score $(player) switch.stats.wins.$(id) matches 1.. run scoreboard players remove #total_games_not_won switch.data 1

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/update_stats_storage/stats_per_minigame with storage switch:main copy[0]

