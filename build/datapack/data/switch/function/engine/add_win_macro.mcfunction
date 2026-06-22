
#> switch:engine/add_win_macro
#
# @executed	as @a[tag=!...] & at @s
#
# @within	switch:engine/add_win with storage switch:main
#
# @args		current_game (unknown)
#

$scoreboard players add @s switch.stats.wins.$(current_game) 1

