
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

scoreboard players set #intro_rules switch.data 0
execute if data storage switch:main {current_game:"pitch_creep"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"laser_game"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"warden_escape"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"pitchout"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"creeper_apocalypse"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"traitors_game"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"spectres_game"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"race"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"rush_the_point"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"rush_the_flag"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"spleef"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"de_a_coudre"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"feed_fast"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"mlg_a_coudre"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"protect_the_king"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"castagne"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"layers_2_teams"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"layers_4_teams"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"thunder_spear"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"tnt_run"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"sheepwars"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"block_party"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"moutron"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"snowball_painter"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"gay_shooter"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"build_battle"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"beat_the_kings"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"coin_chaser"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"murder_mystery"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"panic_chase"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"simultaneous_jump"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"bombardement"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"shoot_da_sheep"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"minigolf"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"cigogne"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"infected"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"glassrunner"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"capture_the_flag"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"memory_mine"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"fish_fight"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"one_shot"} run scoreboard players set #intro_rules switch.data 2
execute if data storage switch:main {current_game:"pillars_of_fortune"} run scoreboard players set #intro_rules switch.data 3
execute if data storage switch:main {current_game:"fireblast"} run scoreboard players set #intro_rules switch.data 3
scoreboard players set #intro_launch switch.data 0
scoreboard players set #intro_step switch.data 0
scoreboard players set #intro_ticks switch.data 0
scoreboard players set #intro_active switch.data 1
stopwatch create switch:intro
stopwatch restart switch:intro

