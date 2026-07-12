
#> switch:player/practice/remove_checkpoint
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/tick
#

function switch:player/practice/get_last_checkpoint
execute unless data storage switch:temp practice_cp.x run playsound entity.villager.no ambient @s
execute unless data storage switch:temp practice_cp.x run return run function switch:player/translations/practice_no_checkpoint

# Remove the last checkpoint (switch:temp practice_input still holds the player id from get_last_checkpoint)
function switch:player/practice/remove_checkpoint_macro with storage switch:temp practice_input
function switch:player/practice/removed_particles_macro with storage switch:temp practice_cp
playsound block.respawn_anchor.deplete ambient @s
function switch:player/translations/practice_remove_checkpoint

