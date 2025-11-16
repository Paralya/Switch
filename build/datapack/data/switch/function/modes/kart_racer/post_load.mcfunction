
#> switch:modes/kart_racer/post_load
#
# @within	switch:modes/kart_racer/start 9s [ scheduled ]
#

scoreboard players operation #modulo switch.data = #total_checkpoints switch.data
scoreboard players add #modulo switch.data 1

# Checkpoint remember kart state (for respawn)
data modify storage switch:main respawn_states set value []
scoreboard players set #next_id switch.temp.id 0
execute as @e[type=marker,tag=switch.checkpoint] run function switch:modes/kart_racer/checkpoints/setup
execute as @a[tag=!detached] run function switch:modes/kart_racer/player_setup_id

