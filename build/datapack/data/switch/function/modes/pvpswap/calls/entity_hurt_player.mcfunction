
#> switch:modes/pvpswap/calls/entity_hurt_player
#
# @within	???
#

advancement revoke @s only switch:pvpswap/entity_hurt_player
execute if data storage switch:main {current_game:"pvpswap"} run function switch:modes/pvpswap/entity_hurt_player

