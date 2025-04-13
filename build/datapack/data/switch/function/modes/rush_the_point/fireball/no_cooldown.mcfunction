
#> switch:modes/rush_the_point/fireball/no_cooldown
#
# @within	switch:modes/rush_the_point/tick_common
#

# Playsound
playsound entity.villager.no ambient @s

# Convert ticks to seconds
scoreboard players operation #seconds switch.temp.fireball_cooldown = @s switch.temp.fireball_cooldown
scoreboard players operation #seconds switch.temp.fireball_cooldown /= #20 switch.data
scoreboard players operation #digits switch.temp.fireball_cooldown = @s switch.temp.fireball_cooldown
scoreboard players operation #digits switch.temp.fireball_cooldown %= #20 switch.data
scoreboard players operation #digits switch.temp.fireball_cooldown /= #2 switch.data

# Tellraw
function switch:translations/modes_rush_the_point_fireball_no_cooldown

