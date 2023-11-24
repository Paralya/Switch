
# Create scoreboard objectives
$scoreboard objectives add switch.stats.played.$(id) dummy
$scoreboard objectives add switch.stats.wins.$(id) dummy

# Create storage if not defined
$execute unless data storage switch:stats all.modes.$(id) run data modify storage switch:stats all.modes.$(id) set value {total_games:0,played:[],wins:[]}

