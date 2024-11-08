
#> switch:modes/castagne/calls/entity_hurt_player
#
# @within	advancement switch:castagne/entity_hurt_player
#

advancement revoke @s only switch:castagne/entity_hurt_player
execute if data storage switch:main {current_game:"castagne"} run function switch:modes/castagne/entity_hurt_player

