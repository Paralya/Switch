
scoreboard players add #simultaneous_jump_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1

# XP bar
function switch:modes/simultaneous_jump/xp_bar

