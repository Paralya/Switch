
#> switch:stats/async/register_new_player_stats
#
# @within	switch:stats/async/loop_player_stats 1t replace [ scheduled ]
#

## Storage Format: all.player = {total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}

function switch:stats/_sort_player_stats_finalize

kill @e[tag=switch.stat_display]

