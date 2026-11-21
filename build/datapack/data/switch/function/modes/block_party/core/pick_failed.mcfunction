
#> switch:modes/block_party/core/pick_failed
#
# @within	switch:modes/block_party/core/pick_block {reason:"no pixel art found in the art list"}
#			switch:modes/block_party/core/pick_block {reason:"the pixel art is not loaded"} [ at @s ]
#			switch:modes/block_party/core/pick_block {reason:"the palette is not loaded"} [ at @s & positioned ~ ~ ~65 ]
#			switch:modes/block_party/core/pick_block {reason:"the arena is not loaded"}
#			switch:modes/block_party/core/pick_block {reason:"the shulker box position 0 4 0 is not loaded"}
#			switch:modes/block_party/core/pick_block {reason:"the pixel art could not be cloned"}
#			switch:modes/block_party/core/pick_block {reason:"the palette is empty"}
#			switch:modes/block_party/core/pick_block {reason:"the palette block dropped nothing"}
#			switch:modes/block_party/core/pick_block {reason:"the palette block is not one of the 17 colors"}
#
# @args		reason (string)
#

$tellraw @a[tag=convention.debug] ["",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Block Party: $(reason) (attempt ","color":"#FF3347"},{"score":{"name":"#bp_attempts","objective":"switch.data"},"color":"#00E5FF"},{"text":", art ","color":"#FF3347"},{"score":{"name":"#bp_selected_art","objective":"switch.data"},"color":"#00E5FF"},{"text":", palette size ","color":"#FF3347"},{"score":{"name":"#block_count","objective":"switch.data"},"color":"#00E5FF"},{"text":", block ","color":"#FF3347"},{"score":{"name":"#bp_selected_block","objective":"switch.data"},"color":"#00E5FF"},{"text":", dropped ","color":"#FF3347"},{"nbt":"Item.id","storage":"switch:main","color":"#00E5FF"},{"text":")","color":"#FF3347"}]
execute if score #bp_attempts switch.data matches 6.. run return fail
return run function switch:modes/block_party/core/pick_block

