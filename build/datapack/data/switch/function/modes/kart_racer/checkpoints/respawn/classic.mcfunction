
#> switch:modes/kart_racer/checkpoints/respawn/classic
#
# @within	switch:modes/kart_racer/right_click
#

scoreboard players operation #p_id switch.data = @s switch.temp.id
data modify storage switch:main copy set from storage switch:main respawn_states
execute if data storage switch:main copy[0] run function switch:modes/kart_racer/checkpoints/respawn/get_storage_loop

tag @s add switch.temp
execute at @s positioned 0 0 0 summon marker run function switch:modes/kart_racer/checkpoints/respawn/from_marker
execute on vehicle run tp @p[tag=switch.temp] @s
tag @s remove switch.temp

tag @s add switch.playsound

