
# Laser game seconds timer
scoreboard players add #laser_game_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Start thing
execute if score #laser_game_seconds switch.data matches 0 run kill @e[tag=switch.laser_game.base]
execute if score #laser_game_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run summon block_display 517.0 113 524.0 {Tags:["switch.laser_game.base"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{powered:"true",facing:"north",half:"bottom",open:"true"}}}
execute if score #laser_game_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run summon block_display 539.0 105 530.0 {Tags:["switch.laser_game.base"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{powered:"true",facing:"east",half:"bottom",open:"true"}}}
execute if score #laser_game_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run summon block_display 542.0 114 547.0 {Tags:["switch.laser_game.base"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{powered:"true",facing:"south",half:"bottom",open:"true"}}}

# Base reload
scoreboard players remove #base_reload switch.data 1
function switch:translations/modes_laser_game_second
execute if score #base_reload switch.data matches 0 as @e[tag=switch.laser_game.base,sort=random,limit=1] run data merge entity @s {Glowing:true,block_state:{Name:"minecraft:iron_trapdoor"}}
execute if score #base_reload switch.data matches 1.. as @e[tag=switch.laser_game.base] run data merge entity @s {Glowing:false,block_state:{Name:"minecraft:dark_oak_trapdoor"}}


# Bonus mitraillette + change color
scoreboard players remove #mitraillette switch.data 1
scoreboard players remove #change_color switch.data 1
execute if score #mitraillette switch.data matches ..0 run tag @a[tag=!detached,tag=switch.bonus.fast] remove switch.bonus.fast
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.blue @a[tag=!detached,tag=switch.bonus.color,scores={switch.alive=10}]
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.red @a[tag=!detached,tag=switch.bonus.color,scores={switch.alive=11}]
execute if score #change_color switch.data matches ..0 run tag @a[tag=!detached,tag=switch.bonus.color] remove switch.bonus.color

# Update sidebar
function switch:modes/laser_game/update_sidebar

