
# Summon markers from 8 100 8, progressively add 48 to z until 8 100 248, then increment x
scoreboard players set #x switch.data 8
scoreboard players set #z switch.data 8
scoreboard players set #next_id switch.temp.id 0
execute as @a[tag=!detached] summon marker run function switch:modes/build_battle/preparation/summon_marker

# Remove gravity for every player
execute as @a[tag=!detached] run attribute @s minecraft:gravity base set 0.0

## Choose themes
# Get the themes list in storage switch:main build_battle_themes
execute unless data storage switch:main build_battle_themes[5] run function switch:modes/build_battle/preparation/themes_list

# Pick 5 random themes by getting random numbers between 0 and the number of themes
data modify storage switch:main themes set value {theme1:{}, theme2:{}, theme3:{}, theme4:{}, theme5:{}}

data modify storage switch:main theme_select set value {theme:1}
function switch:modes/build_battle/preparation/get_random_theme with storage switch:main theme_select
data modify storage switch:main theme_select.theme set value 2
function switch:modes/build_battle/preparation/get_random_theme with storage switch:main theme_select
data modify storage switch:main theme_select.theme set value 3
function switch:modes/build_battle/preparation/get_random_theme with storage switch:main theme_select
data modify storage switch:main theme_select.theme set value 4
function switch:modes/build_battle/preparation/get_random_theme with storage switch:main theme_select
data modify storage switch:main theme_select.theme set value 5
function switch:modes/build_battle/preparation/get_random_theme with storage switch:main theme_select

# Display the themes in the inventory
execute as @a[tag=!detached] in switch:game run function switch:modes/build_battle/preparation/display_themes

