
## storage switch:stats all run data modify storage switch:stats all set value {
# player:{
# 	total_played:[{name:"Stoupy51",value:0}],
# 	total_wins:[{name:"Stoupy51",value:0}],
# 	total_kills:[{name:"Stoupy51",value:0}],
# 	total_deaths:[{name:"Stoupy51",value:0}],
# 	total_money:[{name:"Stoupy51",value:0}],
# 	played_win_ratio:[{name:"Stoupy51",value:0}],
# },
# modes:{
#	pitch_creep:{total_games:0,played_ranking:[],wins_ranking:[],played_win_ratio:[]}
# }}

$scoreboard players add $(player) switch.stats.played 0
$scoreboard players add $(player) switch.stats.wins 0
$scoreboard players add $(player) switch.stats.kills 0
$scoreboard players add $(player) switch.stats.deaths 0
$scoreboard players add $(player) switch.money 0

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
$execute unless data storage switch:stats all.player.played_win_ratio[{name:"$(player)"}] run data modify storage switch:stats all.player.played_win_ratio append value {name:"$(player)",value:0}
$scoreboard players operation #temp switch.data = $(player) switch.stats.wins
scoreboard players operation #temp switch.data *= #100000 switch.data
$scoreboard players operation #temp switch.data /= $(player) switch.stats.played
$execute store result storage switch:stats all.player.played_win_ratio[{name:"$(player)"}].value float 0.001 run scoreboard players get #temp switch.data

