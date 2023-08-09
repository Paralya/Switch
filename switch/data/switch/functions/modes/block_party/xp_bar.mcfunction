
## XP from 0 to 1000 points
# points > 0 && points < 1000
# 1000 points = 100%
# 0 points = 0%
scoreboard players operation #points switch.data = #block_party_ticks switch.data
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #block_party_round switch.data
function switch:engine/xp_bar_levels

