
# Timer
scoreboard players add #minigolf_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1

# Summon golf balls
execute if score #minigolf_seconds switch.data matches 0 in minecraft:overworld run function switch:modes/minigolf/teleport_all

# XP bar update
function switch:modes/minigolf/xp_bar

