
#> switch:modes/panic_chase/second
#
# @within	switch:modes/panic_chase/calls/second
#

# Timer
scoreboard players add #panic_chase_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/panic_chase/xp_bar

# Release the hunters
execute if score #panic_chase_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #panic_chase_seconds switch.data matches 0 run effect clear @a[team=switch.temp.hunter] darkness
execute if score #panic_chase_seconds switch.data matches 0 run effect clear @a[team=switch.temp.hunter] blindness
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"arti_box"} run fill 10021 106 -3975 10026 104 -3979 air replace tinted_glass
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"nether_storm"} run fill 10033 119 4036 10035 120 4038 air replace #switch:moutron/glass
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"yeti_in_panic"} run fill 4006 111 -11994 4006 112 -11994 air replace tinted_glass

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
function switch:modes/panic_chase/translations/second
execute if score #second switch.data matches 0 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second switch.data matches 20 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second switch.data matches 40 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true

