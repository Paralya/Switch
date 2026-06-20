
#> switch:modes/_common/xp_bar/levels
#
# @within	switch:modes/_common/xp_bar/time
#			switch:modes/block_party/xp_bar
#			switch:modes/bombardement/xp_bar
#			switch:modes/build_battle/xp_bar_preparation
#			switch:modes/build_battle/xp_bar_rating
#			switch:modes/moutron/xp_bar
#

# Set XP levels
data modify storage switch:main temp set value {selector:"@a[tag=!detached]", xp:0, type:" levels"}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #levels switch.data
function switch:modes/_common/xp_bar/macro with storage switch:main temp

