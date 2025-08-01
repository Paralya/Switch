
#> switch:player/update_stats_storage/global_stats
#
# @executed	as @a
#
# @within	switch:player/update_stats_storage/main with storage switch:main input
#			switch:player/update_stats_storage/of_player with storage switch:main input
#

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

# Initialize to zero if not already set
$scoreboard players add $(player) switch.stats.played 0
$scoreboard players add $(player) switch.stats.wins 0
$scoreboard players add $(player) switch.stats.winrate 0
$scoreboard players add $(player) switch.stats.kills 0
$scoreboard players add $(player) switch.stats.deaths 0
$scoreboard players add $(player) switch.money 0
$scoreboard players add $(player) switch.advancements 0

# Update global total stats
$execute unless data storage switch:stats all.player.total_played[{name:"$(player)"}] run data modify storage switch:stats all.player.total_played append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_played[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.played
$execute unless data storage switch:stats all.player.total_wins[{name:"$(player)"}] run data modify storage switch:stats all.player.total_wins append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_wins[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.wins
$execute unless data storage switch:stats all.player.total_kills[{name:"$(player)"}] run data modify storage switch:stats all.player.total_kills append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_kills[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.kills
$execute unless data storage switch:stats all.player.total_deaths[{name:"$(player)"}] run data modify storage switch:stats all.player.total_deaths append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_deaths[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.deaths
$execute unless data storage switch:stats all.player.total_money[{name:"$(player)"}] run data modify storage switch:stats all.player.total_money append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_money[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.money

## Winrate
# Compute winrate and store it globally only if the player has at least 25 wins
$execute unless data storage switch:stats all.player.played_win_ratio[{name:"$(player)"}] run data modify storage switch:stats all.player.played_win_ratio append value {name:"$(player)",value:0}
$scoreboard players operation #temp switch.data = $(player) switch.stats.wins
scoreboard players operation #temp switch.data *= #100000 switch.data
$scoreboard players operation #temp switch.data /= $(player) switch.stats.played
$execute if score $(player) switch.stats.wins matches 25.. store result storage switch:stats all.player.played_win_ratio[{name:"$(player)"}].value float 0.001 run scoreboard players get #temp switch.data
$execute unless score $(player) switch.stats.wins matches 25.. run data modify storage switch:stats all.player.played_win_ratio[{name:"$(player)"}].value set value 0.0f

# Store winrate in the player's stats anyway (no digits, e.g. 35.15% -> 35%)
#$tellraw @a [{"text":"$(player)","color":"gold"},{"text":" has a winrate of ","color":"gray"},{"score":{"name":"#temp","objective":"switch.data"},"color":"gold"},{"text":"%","color":"gray"}]
$scoreboard players operation $(player) switch.stats.winrate = #temp switch.data
$scoreboard players operation $(player) switch.stats.winrate /= #1000 switch.data

# Update advancements count
$execute unless data storage switch:stats all.player.advancement_count[{name:"$(player)"}] run data modify storage switch:stats all.player.advancement_count append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.advancement_count[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.advancements

