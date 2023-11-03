
scoreboard players add #warden_escape_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #warden_escape_seconds switch.data matches 0.. run function switch:modes/warden_escape/xp_bar
execute if score #warden_escape_seconds switch.data matches 0 run function switch:modes/warden_escape/spawn_wardens
execute if score #warden_escape_seconds switch.data matches 10 run function switch:modes/warden_escape/spawn_wardens
execute if score #warden_escape_seconds switch.data matches 20 run function switch:modes/warden_escape/spawn_wardens
execute if score #warden_escape_seconds switch.data matches 30 run function switch:modes/warden_escape/spawn_wardens
execute if score #warden_escape_seconds switch.data matches ..-1 run tp @e[type=warden] 0 -10000 0
execute if score #warden_escape_seconds switch.data matches ..-1 run kill @e[type=warden]

