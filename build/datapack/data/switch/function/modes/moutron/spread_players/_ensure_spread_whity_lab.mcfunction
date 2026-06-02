
#> switch:modes/moutron/spread_players/_ensure_spread_whity_lab
#
# @within	switch:modes/moutron/spread_players/whity_lab
#

execute as @a[tag=!detached] at @s if entity @s[y=0,dy=99] run spreadplayers 91051 91051 2 25 under 106 false @s
execute as @a[tag=!detached] at @s if block ~ ~-1 ~ barrier run spreadplayers 91051 91051 2 25 under 106 false @s

