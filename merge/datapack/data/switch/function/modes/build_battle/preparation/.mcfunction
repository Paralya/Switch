
# Summon markers from 8 100 8, progressively add 48 to z until 8 100 248, then increment x
scoreboard players set #x switch.data 8
scoreboard players set #z switch.data 8
scoreboard players set #next_id switch.temp.id 0
execute as @a[tag=!detached] summon marker run function switch:modes/build_battle/preparation/summon_marker

# Give everyone effects
effect give @a[tag=!detached] levitation infinite 255 true

## Choose themes
# Get the themes list in storage switch:main build_battle_themes
execute store success score #success switch.data run data get storage switch:main build_battle_themes[5]
execute if score #success switch.data matches 0 run function switch:modes/build_battle/preparation/themes_list

# Pick 5 random themes by getting random numbers between 0 and the number of themes
data modify storage switch:main themes set value {theme1:"", theme2:"", theme3:"", theme4:"", theme5:""}

data modify storage switch:main input set value {theme:1, index:0}
execute store result score #modulo_rand switch.data run data get storage switch:main build_battle_themes
function switch:utils/get_random/
execute store result storage switch:main input.index int 1 run scoreboard players get #random switch.data
function switch:modes/build_battle/preparation/get_theme with storage switch:main input

data modify storage switch:main input set value {theme:2, index:0}
execute store result score #modulo_rand switch.data run data get storage switch:main build_battle_themes
function switch:utils/get_random/
execute store result storage switch:main input.index int 1 run scoreboard players get #random switch.data
function switch:modes/build_battle/preparation/get_theme with storage switch:main input

data modify storage switch:main input set value {theme:3, index:0}
execute store result score #modulo_rand switch.data run data get storage switch:main build_battle_themes
function switch:utils/get_random/
execute store result storage switch:main input.index int 1 run scoreboard players get #random switch.data
function switch:modes/build_battle/preparation/get_theme with storage switch:main input

data modify storage switch:main input set value {theme:4, index:0}
execute store result score #modulo_rand switch.data run data get storage switch:main build_battle_themes
function switch:utils/get_random/
execute store result storage switch:main input.index int 1 run scoreboard players get #random switch.data
function switch:modes/build_battle/preparation/get_theme with storage switch:main input

data modify storage switch:main input set value {theme:5, index:0}
execute store result score #modulo_rand switch.data run data get storage switch:main build_battle_themes
function switch:utils/get_random/
execute store result storage switch:main input.index int 1 run scoreboard players get #random switch.data
function switch:modes/build_battle/preparation/get_theme with storage switch:main input

# Display the themes in the inventory
execute as @a[tag=!detached] in minecraft:overworld run function switch:modes/build_battle/preparation/display_themes


