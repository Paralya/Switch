
#> switch:modes/fish_fight/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/fish_fight/calls/joined
#			switch:modes/fish_fight/process_end [ as @a[tag=!detached,sort=random] ]
#

scoreboard players reset @s switch.alive
function switch:modes/fish_fight/death

