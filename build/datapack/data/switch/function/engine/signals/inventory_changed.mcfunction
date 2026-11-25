
#> switch:engine/signals/inventory_changed
#
# @executed	as the player & at current position
#
# @within	advancement switch:inventory_changed
#

# Revoke inventory_changed advancement
advancement revoke @s only switch:inventory_changed

# Learn the kit layout a second after the first change
tag @s[tag=switch.layout.active,tag=!detached] add switch.layout.dirty
execute if entity @s[tag=switch.layout.dirty] unless score @s switch.layout.cd matches 1.. run scoreboard players set @s switch.layout.cd 20

# Put back a lobby overlay piece taken by the mouse
execute if entity @s[tag=detached,tag=!switch.lobby_setup] run function switch:player/restore_lobby_gui

# Launch inventory_changed signal to the modes listening to it
execute if data storage switch:main {current_game:"beat_the_kings"} in switch:game run function switch:modes/beat_the_kings/calls/inventory_changed
execute if data storage switch:main {current_game:"capture_the_flag"} in switch:game run function switch:modes/capture_the_flag/calls/inventory_changed
execute if data storage switch:main {current_game:"rush_the_point"} in switch:game run function switch:modes/rush_the_point/calls/inventory_changed
execute if data storage switch:main {current_game:"spectres_game"} in switch:game run function switch:modes/spectres_game/calls/inventory_changed
execute if data storage switch:main {current_game:"traitors_game"} in switch:game run function switch:modes/traitors_game/calls/inventory_changed

