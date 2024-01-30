
data modify storage switch:main input set value {blue:0,red:0,minutes:0,seconds:0,optional_zero:""}
execute store result storage switch:main input.blue int 1 run scoreboard players get #blue_points switch.data
execute store result storage switch:main input.red int 1 run scoreboard players get #red_points switch.data

scoreboard players operation #minutes switch.data = #remaining_time switch.data
scoreboard players operation #minutes switch.data /= #60 switch.data
scoreboard players operation #seconds switch.data = #remaining_time switch.data
scoreboard players operation #seconds switch.data %= #60 switch.data

execute store result storage switch:main input.minutes int 1 run scoreboard players get #minutes switch.data
execute store result storage switch:main input.seconds int 1 run scoreboard players get #seconds switch.data
execute if score #seconds switch.data matches 0..9 run data modify storage switch:main input.optional_zero set value "0"

function switch:modes/capture_the_flag/update_sidebar_macro with storage switch:main input

