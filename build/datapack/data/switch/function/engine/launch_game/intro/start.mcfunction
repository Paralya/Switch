
#> switch:engine/launch_game/intro/start
#
# @within	switch:engine/force_start_macro with storage switch:main
#			switch:engine/launch_game/transition with storage switch:main
#
# @args		current_game (unknown)
#

$posteffect add @a[tag=!detached,scores={switch.lang=0}] switch:intro/$(current_game)_fr
$posteffect add @a[tag=!detached,scores={switch.lang=1}] switch:intro/$(current_game)_en
execute as @a[tag=!detached] at @s run playsound minecraft:entity.ender_dragon.flap ambient @s ~ ~ ~ 1 0.6

schedule function switch:engine/launch_game/intro/title 16t
schedule function switch:engine/launch_game/intro/rule 30t append
schedule function switch:engine/launch_game/intro/rule 42t append
schedule function switch:engine/launch_game/intro/rule 54t append
schedule function switch:engine/launch_game/intro/reveal 90t
schedule function switch:engine/launch_game/intro/stop 130t

