
gamemode survival @s

# give the player the block needed to build the structure and set the build time


execute if score #rtb.random switch.rtb.data matches 0 run give @s blue_concrete 9
execute if score #rtb.random switch.rtb.data matches 0 run scoreboard players set #rtb_build_time switch.rtb.data 400
