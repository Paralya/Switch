
# Timer
scoreboard players add #panic_chase_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/panic_chase/xp_bar

# Release the hunters
execute if score #panic_chase_seconds switch.data matches 0 as @a at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {map:"arti_box"} run fill 119021 106 119025 119026 104 119021 air replace tinted_glass

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
execute if score #remaining_time switch.data matches 0.. run title @a actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

