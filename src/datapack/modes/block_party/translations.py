
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the block_party translation functions at switch:modes/block_party/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/block_party/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Block Party dans 10 secondes, dirigez-vous vers la couleur indiquée dans le temps imparti !", "Block Party game starts in 10 seconds, head to the indicated color in the allotted time!")

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#block_party_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#block_party_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /record_tellraw  (macro function, called with `with storage switch:records block_party`)
	write_function(f"{path}/record_tellraw", """
# French
$execute if score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player) !","color":"yellow"}]
$execute unless score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(round) manches détenu par $(player)","color":"yellow"}]

# English
$execute if score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New $(round) round record by $(player)!","color":"yellow"}]
$execute unless score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(round) rounds held by $(player)","color":"yellow"}]
""")

	# /core_give_block
	write_function(f"{path}/core_give_block", """
# French
execute if score #bp_block switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"Beige","italic":false,"color":"#c8ad7f"}
execute if score #bp_block switch.data matches 0 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.white","italic":false,"color":"#ffffff"}
execute if score #bp_block switch.data matches 1 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.orange","italic":false,"color":"#ff7f00"}
execute if score #bp_block switch.data matches 2 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.magenta","italic":false,"color":"#ff00ff"}
execute if score #bp_block switch.data matches 3 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.light_blue","italic":false,"color":"#00ffff"}
execute if score #bp_block switch.data matches 4 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.yellow","italic":false,"color":"#ffff00"}
execute if score #bp_block switch.data matches 5 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.lime","italic":false,"color":"#00ff00"}
execute if score #bp_block switch.data matches 6 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.pink","italic":false,"color":"#ff7faa"}
execute if score #bp_block switch.data matches 7 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.gray","italic":false,"color":"#7f7f7f"}
execute if score #bp_block switch.data matches 8 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.light_gray","italic":false,"color":"#c0c0c0"}
execute if score #bp_block switch.data matches 9 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.cyan","italic":false,"color":"#009090"}
execute if score #bp_block switch.data matches 10 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.purple","italic":false,"color":"#7f00ff"}
execute if score #bp_block switch.data matches 11 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.blue","italic":false,"color":"#0000ff"}
execute if score #bp_block switch.data matches 12 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.brown","italic":false,"color":"#7f3f00"}
execute if score #bp_block switch.data matches 13 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.green","italic":false,"color":"#006000"}
execute if score #bp_block switch.data matches 14 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.red","italic":false,"color":"#ff0000"}
execute if score #bp_block switch.data matches 15 run title @a[scores={switch.lang=0},tag=!detached] title {"translate":"color.minecraft.black","italic":false,"color":"#313131"}
execute if score #bp_block switch.data matches -1 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Beige","italic":false,"color":"#c8ad7f"}
execute if score #bp_block switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.white","italic":false,"color":"#ffffff"}
execute if score #bp_block switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.orange","italic":false,"color":"#ff7f00"}
execute if score #bp_block switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.magenta","italic":false,"color":"#ff00ff"}
execute if score #bp_block switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.light_blue","italic":false,"color":"#00ffff"}
execute if score #bp_block switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.yellow","italic":false,"color":"#ffff00"}
execute if score #bp_block switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.lime","italic":false,"color":"#00ff00"}
execute if score #bp_block switch.data matches 6 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.pink","italic":false,"color":"#ff7faa"}
execute if score #bp_block switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.gray","italic":false,"color":"#7f7f7f"}
execute if score #bp_block switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.light_gray","italic":false,"color":"#c0c0c0"}
execute if score #bp_block switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.cyan","italic":false,"color":"#009090"}
execute if score #bp_block switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.purple","italic":false,"color":"#7f00ff"}
execute if score #bp_block switch.data matches 11 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.blue","italic":false,"color":"#0000ff"}
execute if score #bp_block switch.data matches 12 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.brown","italic":false,"color":"#7f3f00"}
execute if score #bp_block switch.data matches 13 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.green","italic":false,"color":"#006000"}
execute if score #bp_block switch.data matches 14 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.red","italic":false,"color":"#ff0000"}
execute if score #bp_block switch.data matches 15 run tellraw @a[scores={switch.lang=0},tag=!detached] {"translate":"color.minecraft.black","italic":false,"color":"#313131"}

# English
execute if score #bp_block switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"Beige","italic":false,"color":"#c8ad7f"}
execute if score #bp_block switch.data matches 0 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.white","italic":false,"color":"#ffffff"}
execute if score #bp_block switch.data matches 1 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.orange","italic":false,"color":"#ff7f00"}
execute if score #bp_block switch.data matches 2 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.magenta","italic":false,"color":"#ff00ff"}
execute if score #bp_block switch.data matches 3 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.light_blue","italic":false,"color":"#00ffff"}
execute if score #bp_block switch.data matches 4 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.yellow","italic":false,"color":"#ffff00"}
execute if score #bp_block switch.data matches 5 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.lime","italic":false,"color":"#00ff00"}
execute if score #bp_block switch.data matches 6 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.pink","italic":false,"color":"#ff7faa"}
execute if score #bp_block switch.data matches 7 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.gray","italic":false,"color":"#7f7f7f"}
execute if score #bp_block switch.data matches 8 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.light_gray","italic":false,"color":"#c0c0c0"}
execute if score #bp_block switch.data matches 9 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.cyan","italic":false,"color":"#009090"}
execute if score #bp_block switch.data matches 10 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.purple","italic":false,"color":"#7f00ff"}
execute if score #bp_block switch.data matches 11 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.blue","italic":false,"color":"#0000ff"}
execute if score #bp_block switch.data matches 12 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.brown","italic":false,"color":"#7f3f00"}
execute if score #bp_block switch.data matches 13 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.green","italic":false,"color":"#006000"}
execute if score #bp_block switch.data matches 14 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.red","italic":false,"color":"#ff0000"}
execute if score #bp_block switch.data matches 15 run title @a[scores={switch.lang=1},tag=!detached] title {"translate":"color.minecraft.black","italic":false,"color":"#313131"}
execute if score #bp_block switch.data matches -1 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Beige","italic":false,"color":"#c8ad7f"}
execute if score #bp_block switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.white","italic":false,"color":"#ffffff"}
execute if score #bp_block switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.orange","italic":false,"color":"#ff7f00"}
execute if score #bp_block switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.magenta","italic":false,"color":"#ff00ff"}
execute if score #bp_block switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.light_blue","italic":false,"color":"#00ffff"}
execute if score #bp_block switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.yellow","italic":false,"color":"#ffff00"}
execute if score #bp_block switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.lime","italic":false,"color":"#00ff00"}
execute if score #bp_block switch.data matches 6 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.pink","italic":false,"color":"#ff7faa"}
execute if score #bp_block switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.gray","italic":false,"color":"#7f7f7f"}
execute if score #bp_block switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.light_gray","italic":false,"color":"#c0c0c0"}
execute if score #bp_block switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.cyan","italic":false,"color":"#009090"}
execute if score #bp_block switch.data matches 10 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.purple","italic":false,"color":"#7f00ff"}
execute if score #bp_block switch.data matches 11 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.blue","italic":false,"color":"#0000ff"}
execute if score #bp_block switch.data matches 12 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.brown","italic":false,"color":"#7f3f00"}
execute if score #bp_block switch.data matches 13 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.green","italic":false,"color":"#006000"}
execute if score #bp_block switch.data matches 14 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.red","italic":false,"color":"#ff0000"}
execute if score #bp_block switch.data matches 15 run tellraw @a[scores={switch.lang=1},tag=!detached] {"translate":"color.minecraft.black","italic":false,"color":"#313131"}
""")

	# /core_pick_random_art
	write_function(f"{path}/core_pick_random_art", """
# French
execute unless data block 0 5 0 Items[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Veuillez reporter ce message à Stoupy : #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Démarrage de la manche n°"},{"score":{"name":"#block_party_round","objective":"switch.data"},"color":"aqua"},{"text":" !"}]

# English
execute unless data block 0 5 0 Items[0] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Please report this message to Stoupy: #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Start of round no."},{"score":{"name":"#block_party_round","objective":"switch.data"},"color":"aqua"},{"text":"!"}]
""")

	# /core_get_block_count_loop
	write_function(f"{path}/core_get_block_count_loop", """
# French
execute unless loaded ~ ~ ~ run tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Veuillez reporter ce message à Stoupy : Unloaded position #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]

# English
execute unless loaded ~ ~ ~ run tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Please refer this message to Stoupy: Unloaded position #bp_selected_block = "},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"aqua"},{"text":", #modulo_rand = "},{"score":{"name":"#modulo_rand","objective":"switch.data"},"color":"aqua"},{"text":", (#y_pos, z_pos) : ("},{"score":{"name":"#y_pos","objective":"switch.data"},"color":"aqua"},{"text":","},{"score":{"name":"#z_pos","objective":"switch.data"},"color":"aqua"},{"text":")"}]
""")
