
#> switch:modes/_common/pvp_arena/start_common
#
# @within	switch:modes/castagne/start
#			switch:modes/pvpswap/start
#

effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1

