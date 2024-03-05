
# Timer
scoreboard players add #panic_chase_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/panic_chase/xp_bar

# Release the hunters
execute if score #panic_chase_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #panic_chase_seconds switch.data matches 0 run effect clear @a[team=switch.temp.hunter] darkness
execute if score #panic_chase_seconds switch.data matches 0 run effect clear @a[team=switch.temp.hunter] blindness
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"arti_box"} run fill 119021 106 119025 119026 104 119021 air replace tinted_glass
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"nether_storm"} run fill 122033 119 122036 122035 120 122038 air replace #switch:moutron/glass
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"yeti_in_panic"} run fill 158006 111 158006 158006 112 158006 air replace tinted_glass

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
function switch:translations/modes_panic_chase_second
execute if score #second switch.data matches 0 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second switch.data matches 30 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true

# Number of hunters
execute store result score #hunters switch.data if entity @a[team=switch.temp.hunter]
execute if score #hunters switch.data matches 2.. run effect give @a[team=switch.temp.hunter] glowing 2 0 true

