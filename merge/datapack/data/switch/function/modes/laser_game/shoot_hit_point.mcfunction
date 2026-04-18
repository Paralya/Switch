
summon marker ~ ~ ~ {Tags:["switch.shoot_ray"]}
execute if entity @e[tag=switch.laser_game.base,distance=..1.69,nbt={Glowing:true}] run function switch:modes/laser_game/shooted_base

