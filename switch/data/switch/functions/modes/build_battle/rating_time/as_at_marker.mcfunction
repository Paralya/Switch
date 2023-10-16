
# Add a temporary tag
tag @s add switch.marker_temp

# Save the build in the structure switch:temp
setblock ~ ~-2 ~ structure_block{mode:"SAVE",name:"switch:temp",posX:5,posY:2,posZ:5,sizeX:38,sizeY:27,sizeZ:38,showboundingbox:0b}
setblock ~ ~-1 ~ redstone_block

# Forceload the save zone
execute positioned -76 100 0 summon marker run function switch:modes/build_battle/rating_time/summon_save_zone

# Increment the next save position
scoreboard players add #build_battle_save_z switch.data 39
execute if score #build_battle_save_z switch.data matches 273.. run scoreboard players remove #build_battle_save_x switch.data 39
execute if score #build_battle_save_z switch.data matches 273.. run scoreboard players set #build_battle_save_z switch.data 0

# Teleport every player to the current zone
spreadplayers ~24 ~24 5 10 under 128 false @a

