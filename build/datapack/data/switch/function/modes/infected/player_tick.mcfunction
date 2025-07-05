
#> switch:modes/infected/player_tick
#
# @within	switch:modes/infected/tick
#

# Give saturation not indefinitely
execute unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# If zombie, make sure it has the zombie hands
execute if entity @s[team=switch.temp.zombie] unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot switch:i/zombie_hands

