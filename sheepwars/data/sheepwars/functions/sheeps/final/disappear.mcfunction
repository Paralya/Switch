
#> sheepwars:sheeps/final/disappear
#
# @within			sheepwars:sheeps/final_action
# @executed			as & at the sheep
#
# @description		Remove the sheep from the game.
#

# Unride any rider
execute on passengers run ride @s[type=player] dismount

# Remove the sheep
tp @s 0 -10000 0
kill @s

