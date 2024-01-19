
# Add block count and continue loop if not air
scoreboard players add #block_count switch.data 1
execute unless loaded ~ ~ ~ run tellraw @a[tag=!detached] ["\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Veuillez reporter ce message à Stoupy51 : Unloaded position #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":", "},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run function switch:modes/block_party/core/get_block_count_loop

