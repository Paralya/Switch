
#> switch:translations/common/death_missed_jump
#
# @within	switch:modes/simultaneous_jump/death
#			switch:modes/de_a_coudre/death
#

# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut [+0 point]"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" missed a jump [+0 point]"}]

