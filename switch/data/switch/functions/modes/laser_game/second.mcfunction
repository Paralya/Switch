
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #laser_game_seconds switch.data 1

execute if score #laser_game_seconds switch.data matches 10 run kill @e[tag=switch.laser_game.base]
execute if score #laser_game_seconds switch.data matches 10 run summon item_frame 516 104 523 {Tags:["switch.laser_game.base"],Facing:2b,Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Glowing:1b}


#Base reload
scoreboard players remove #base_reload switch.data 1
execute if score #base_reload switch.data matches 0 run tellraw @a [{"text":"La base de bonus vient de se recharger !","color":"yellow"}]
execute if score #base_reload switch.data matches 0 run setblock 516 104 523 iron_trapdoor[powered=true,open=true]
execute if score #base_reload switch.data matches 0 run data modify entity @e[tag=switch.laser_game.base,limit=1] Item set value {id:"minecraft:experience_bottle",Count:1b}
execute if score #base_reload switch.data matches 1.. run setblock 516 104 523 dark_oak_trapdoor[powered=true,open=true]


#Bonus mitraillette + change color
scoreboard players remove #mitraillette switch.data 1
scoreboard players remove #change_color switch.data 1
execute if score #mitraillette switch.data matches ..0 run tag @a[tag=switch.bonus.fast] remove switch.bonus.fast
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.blue @a[tag=switch.bonus.color,tag=switch.laser_game.blue]
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.red @a[tag=switch.bonus.color,tag=switch.laser_game.red]
execute if score #change_color switch.data matches ..0 run tag @a[tag=switch.bonus.color] remove switch.bonus.color


scoreboard players remove #remaining_time switch.data 1
function switch:modes/laser_game/update_sidebar/timer

