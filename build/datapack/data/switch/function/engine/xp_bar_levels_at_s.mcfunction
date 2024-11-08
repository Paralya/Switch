
#> switch:engine/xp_bar_levels_at_s
#
# @within	switch:modes/fireblast/xp_bar
#

# Set XP levels
data modify storage switch:main temp set value {selector:"@s", xp:0, type:" levels"}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #levels switch.data
function switch:engine/xp_bar_macro with storage switch:main temp

