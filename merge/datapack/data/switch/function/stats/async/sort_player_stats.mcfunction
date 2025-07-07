
## Storage Format: all.player = {total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}

# Copy stats to temp storage
data modify storage switch:temp played set from storage switch:stats all.player.total_played
data modify storage switch:temp wins set from storage switch:stats all.player.total_wins
data modify storage switch:temp kills set from storage switch:stats all.player.total_kills
data modify storage switch:temp deaths set from storage switch:stats all.player.total_deaths
data modify storage switch:temp money set from storage switch:stats all.player.total_money
data modify storage switch:temp played_win_ratio set from storage switch:stats all.player.played_win_ratio
data modify storage switch:temp advancement_count set from storage switch:stats all.player.advancement_count
data modify storage switch:temp new_played set value []
data modify storage switch:temp new_wins set value []
data modify storage switch:temp new_kills set value []
data modify storage switch:temp new_deaths set value []
data modify storage switch:temp new_money set value []
data modify storage switch:temp new_played_win_ratio set value []
data modify storage switch:temp new_advancement_count set value []

# Sort stats asynchronously
execute if data storage switch:temp played[0] run schedule function switch:stats/async/loop_player_stats 1t replace

