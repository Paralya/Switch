
#> switch:modes/capture_the_flag/choose_map_for
#
# @within	switch:modes/capture_the_flag/choose_map_for
#			switch:modes/capture_the_flag/start
#

execute store result score #count switch.data if entity @a[tag=!detached]
function switch:utils/choose_map_for {id:"capture_the_flag", maps:["operation_pigclaw","ctf_plains_castles","ctf_mountains_castles","ctf_flowers","ctf_nether","ctf_forest_castles"]}

## If not enough players for certain maps, restart it
execute if score #count switch.data matches ..30 if data storage switch:main {map:"ctf_nether"} run function switch:modes/capture_the_flag/choose_map_for
execute if score #count switch.data matches ..14 if data storage switch:main {map:"ctf_mountains_castles"} run function switch:modes/capture_the_flag/choose_map_for

