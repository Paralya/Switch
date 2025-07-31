
## Storage Format: switch:stats all.modes = {pitch_creep:{total_games:0,played:[],wins:[]}, minigolf:{...}, ...}
# Sort in descending order the played array
$data modify storage switch:temp list set from storage switch:stats all.modes.$(id).played
function switch:utils/list/desc/sort
$data modify storage switch:stats all.modes.$(id).played set from storage switch:temp list

# Sort in descending order the wins array
$data modify storage switch:temp list set from storage switch:stats all.modes.$(id).wins
function switch:utils/list/desc/sort
$data modify storage switch:stats all.modes.$(id).wins set from storage switch:temp list

# Sort in descending order the played_win_ratio array
$data modify storage switch:temp list set from storage switch:stats all.modes.$(id).played_win_ratio
function switch:utils/list/desc/sort
$data modify storage switch:stats all.modes.$(id).played_win_ratio set from storage switch:temp list

# Check if a player have a number of played games superior to the total games played
scoreboard players set #max_played switch.data 0
scoreboard players set #total_games switch.data 0
$execute store result score #total_games switch.data run data get storage switch:stats all.modes.$(id).total_games
$execute store result score #max_played switch.data run data get storage switch:stats all.modes.$(id).played[0].value
$execute if score #max_played switch.data > #total_games switch.data store result storage switch:stats all.modes.$(id).total_games int 1 run scoreboard players get #max_played switch.data

