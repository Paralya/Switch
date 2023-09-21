
# Add a temporary tag
tag @s add switch.marker_temp

# Save the build in the structure switch:temp
setblock ~ ~-2 ~ structure_block{mode:"SAVE",name:"switch:temp",posX:5,posY:2,posZ:5,sizeX:38,sizeY:27,sizeZ:38}
setblock ~ ~-1 ~ redstone_block

# Forceload the save zone
summon marker -76 100 0 {Tags:["switch.build_battle_save"]}
execute store result entity @e[tag=switch.build_battle_save,limit=1] Pos[0] double 1 run scoreboard players get #build_battle_save_x switch.data
execute store result entity @e[tag=switch.build_battle_save,limit=1] Pos[2] double 1 run scoreboard players get #build_battle_save_z switch.data
execute at @e[tag=switch.build_battle_save,limit=1] run forceload add ~ ~ ~38 ~38

# Increment the next save position
scoreboard players add #build_battle_save_z switch.data 39
execute if score #build_battle_save_z switch.data matches 273.. run scoreboard players remove #build_battle_save_x switch.data 39
execute if score #build_battle_save_z switch.data matches 273.. run scoreboard players set #build_battle_save_z switch.data 0

# Teleport every player to the current zone
spreadplayers ~24 ~24 5 10 under 128 false @a
title @a times 20 60 20
title @a title {"text":"Builder","color":"yellow"}
title @a subtitle {"selector":"@p[tag=switch.player_to_rate]","color":"aqua"}

