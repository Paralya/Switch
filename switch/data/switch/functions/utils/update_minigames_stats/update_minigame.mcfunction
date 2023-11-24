
# Storage Format: switch:stats all.modes = {pitch_creep:{total_games:0,played:[],wins:[]}, minigolf:{...}, ...}

# Store the number of total games played (in case a player have a number of played games superior so we can sync)
$execute store result score #total_games switch.data run data get storage switch:stats all.modes.$(id).total_games

# Sort played array in descending order




