
#> switch:npc/ofchara/tick
#
# @executed	positioned -22 69.8 3
#
# @within	switch:lobby_tick [ positioned -22 69.8 3 ]
#

# If OfChara is not present in a radius of 1 block, spawn it.
execute unless entity 20180612-2024-2025-2026-300000000002 run function switch:npc/ofchara/summon

# Tick function
execute as 20180612-2024-2025-2026-300000000002 at @s run function switch:npc/tick {facing:"@p[gamemode=!spectator,distance=..5]"}

