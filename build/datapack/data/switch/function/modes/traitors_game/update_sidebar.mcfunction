
#> switch:modes/traitors_game/update_sidebar
#
# @within	switch:modes/traitors_game/start
#			switch:modes/traitors_game/death/for_global
#

data modify storage switch:main input set value {inspecteur:0,ninja:0,innocent:0,traitre:0,gros_traitre:0,floupy:0}
execute store result storage switch:main input.inspecteur int 1 if entity @e[type=marker,scores={switch.temp.role=1}]
execute store result storage switch:main input.ninja int 1 if entity @e[type=marker,scores={switch.temp.role=3..4}]
execute store result storage switch:main input.innocent int 1 if entity @e[type=marker,scores={switch.temp.role=2}]
execute store result storage switch:main input.traitre int 1 if entity @e[type=marker,scores={switch.temp.role=5}]
execute store result storage switch:main input.gros_traitre int 1 if entity @e[type=marker,scores={switch.temp.role=6}]
execute store result storage switch:main input.floupy int 1 if entity @e[type=marker,scores={switch.temp.role=7}]
execute if data storage switch:main input{inspecteur:0} run scoreboard players reset §5 switch.temp.sidebar
execute if data storage switch:main input{ninja:0} run scoreboard players reset §4 switch.temp.sidebar
execute if data storage switch:main input{innocent:0} run scoreboard players reset §3 switch.temp.sidebar
execute if data storage switch:main input{traitre:0} run scoreboard players reset §2 switch.temp.sidebar
execute if data storage switch:main input{gros_traitre:0} run scoreboard players reset §1 switch.temp.sidebar
execute if data storage switch:main input{floupy:0} run scoreboard players reset §0 switch.temp.sidebar

function switch:modes/traitors_game/update_sidebar_macro with storage switch:main input

