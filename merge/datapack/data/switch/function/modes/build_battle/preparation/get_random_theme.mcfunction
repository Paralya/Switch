
$data modify storage switch:main input set value {theme:$(theme), index:0}
execute store result score #modulo_rand switch.data run data get storage switch:main build_battle_themes
function switch:utils/get_random/main
execute store result storage switch:main input.index int 1 run scoreboard players get #random switch.data
function switch:modes/build_battle/preparation/get_theme with storage switch:main input

