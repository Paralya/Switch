
#> switch:modes/infected/player_tick
#
# @within	switch:modes/infected/tick
#

# Give saturation not indefinitely
execute unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# If zombie, make sure it has the zombie hands, and the armor
execute if entity @s[team=switch.temp.zombie] unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot switch:i/zombie_hands
execute if entity @s[team=switch.temp.zombie] unless data entity @s equipment.head run loot replace entity @s armor.head loot switch:i/zombie_head
execute if entity @s[team=switch.temp.zombie] unless data entity @s equipment.chest run loot replace entity @s armor.chest loot switch:i/zombie_chest
execute if entity @s[team=switch.temp.zombie] unless data entity @s equipment.legs run loot replace entity @s armor.legs loot switch:i/zombie_legs
execute if entity @s[team=switch.temp.zombie] unless data entity @s equipment.feet run loot replace entity @s armor.feet loot switch:i/zombie_feet

