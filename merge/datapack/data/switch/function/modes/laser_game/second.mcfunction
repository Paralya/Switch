
# Laser game seconds timer
scoreboard players add #laser_game_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Start thing
execute if score #laser_game_seconds switch.data matches ..9 run kill @e[type=!player,type=!marker]
execute if score #laser_game_seconds switch.data matches 10 run kill @e[tag=switch.laser_game.base]
execute if score #laser_game_seconds switch.data matches 10 if data storage switch:main {map:"laser_game"} in switch:game run summon item_frame 517 113 524 {Tags:["switch.laser_game.base"],Facing:2b,Invisible:true,Invulnerable:true,Fixed:true,Silent:true,Glowing:true}


# Base reload
scoreboard players remove #base_reload switch.data 1
function switch:translations/modes_laser_game_second
execute if score #base_reload switch.data matches 0 in switch:game run setblock 517 113 524 iron_trapdoor[powered=true,open=true]
execute if score #base_reload switch.data matches 0 in switch:game run setblock 36041 149 36011 iron_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 0 in switch:game run setblock 36041 149 36012 iron_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 0 in switch:game run setblock 72114 112 72090 iron_trapdoor[powered=true,open=true,facing=north]
execute if score #base_reload switch.data matches 0 as @e[tag=switch.laser_game.base] run data modify entity @s Item set value {id:"experience_bottle",count:1}
execute if score #base_reload switch.data matches 1.. in switch:game run setblock 517 113 524 dark_oak_trapdoor[powered=true,open=true]
execute if score #base_reload switch.data matches 1.. in switch:game run setblock 36041 149 36011 dark_oak_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 1.. in switch:game run setblock 36041 149 36012 dark_oak_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 1.. in switch:game run setblock 72114 112 72090 dark_oak_trapdoor[powered=true,open=true,facing=north]


# Bonus mitraillette + change color
scoreboard players remove #mitraillette switch.data 1
scoreboard players remove #change_color switch.data 1
execute if score #mitraillette switch.data matches ..0 run tag @a[tag=!detached,tag=switch.bonus.fast] remove switch.bonus.fast
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.blue @a[tag=!detached,tag=switch.bonus.color,scores={switch.alive=10}]
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.red @a[tag=!detached,tag=switch.bonus.color,scores={switch.alive=11}]
execute if score #change_color switch.data matches ..0 run tag @a[tag=!detached,tag=switch.bonus.color] remove switch.bonus.color

# Update sidebar
function switch:modes/laser_game/update_sidebar

