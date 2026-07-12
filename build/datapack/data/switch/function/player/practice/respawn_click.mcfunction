
#> switch:player/practice/respawn_click
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/tick
#

function switch:player/practice/get_last_checkpoint
execute unless data storage switch:temp practice_cp.x run playsound entity.villager.no ambient @s
execute unless data storage switch:temp practice_cp.x run return run function switch:player/translations/practice_no_checkpoint
function switch:player/practice/teleport

