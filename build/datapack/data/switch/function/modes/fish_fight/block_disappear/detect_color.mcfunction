
#> switch:modes/fish_fight/block_disappear/detect_color
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_white=1..}] & at @s
#
# @within	switch:modes/fish_fight/block_disappear/global_tick {color:"white"} [ as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_white=1..}] & at @s ]
#			switch:modes/fish_fight/block_disappear/global_tick {color:"blue"} [ as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_blue=1..}] & at @s ]
#			switch:modes/fish_fight/block_disappear/global_tick {color:"red"} [ as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_red=1..}] & at @s ]
#
# @args		color (string)
#

# Replace every concrete to a command block (to spawn a marker)
$fill ~-10 ~-10 ~-10 ~10 ~10 ~10 command_block{Command:"function switch:modes/fish_fight/block_disappear/replace_$(color)",auto:true} replace $(color)_concrete
$scoreboard players reset @s switch.temp.placed_$(color)

