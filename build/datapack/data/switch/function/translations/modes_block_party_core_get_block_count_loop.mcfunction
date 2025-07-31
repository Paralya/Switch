
#> switch:translations/modes_block_party_core_get_block_count_loop
#
# @executed	positioned ~ ~ ~1
#
# @within	switch:modes/block_party/core/get_block_count_loop
#

# French
execute unless loaded ~ ~ ~ run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Veuillez reporter ce message à Stoupy : Unloaded position #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]

# English
execute unless loaded ~ ~ ~ run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Please refer this message to Stoupy: Unloaded position #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]

