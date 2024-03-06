
# French
execute unless data block 0 0 0 Items[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Veuillez reporter ce message à Stoupy51 : #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Démarrage de la manche n°"},{"score":{"name":"#block_party_round","objective":"switch.data"},"color":"aqua"},{"text":" !"}]

# English
execute unless data block 0 0 0 Items[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":"Please report this message to Stoupy51: #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"}, "color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"}, "color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"Start of round no."},{"score":{"name":"#block_party_round","objective":"switch.data"}, "color":"aqua"},{"text":"!"}]

