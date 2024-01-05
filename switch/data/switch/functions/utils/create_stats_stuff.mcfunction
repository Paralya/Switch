
# Create scoreboard objectives
$scoreboard objectives add switch.stats.played.$(id) dummy
$scoreboard objectives add switch.stats.wins.$(id) dummy

# Create storages if not defined
$execute unless data storage switch:stats all.modes.$(id) run data modify storage switch:stats all.modes.$(id) set value {total_games:0,played:[],wins:[]}
$execute unless data storage switch:ratings all[{id:"$(id)"}] run data modify storage switch:ratings all append value {id:"$(id)",Name:"",points:0,int:0,digits:0,players:[]}
$data modify storage switch:ratings all[{id:"$(id)"}].Name set value "$(Name)"
$data modify storage switch:ratings all[{id:"$(id)"}].index set value $(index)
$data modify storage switch:ratings all[{id:"$(id)"}].index_hundred set value $(index)00

