
#> switch:modes/kart_racer/checkpoints/respawn/from_marker
#
# @within	switch:modes/kart_racer/checkpoints/respawn/classic
#

data modify entity @s Pos set from storage switch:main copy[0].Pos
data modify entity @s Rotation set from storage switch:main copy[0].Rotation
execute at @s as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] run function switch:modes/kart_racer/checkpoints/respawn/from_kart
kill @s

