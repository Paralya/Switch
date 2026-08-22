
#> switch:lobby/npc/ofchara/on_right_click
#
# @executed	as @n[type=interaction,tag=switch.npc]
#
# @within	switch:lobby/npc/ofchara/summon { run: "function switch:lobby/npc/ofchara/on_right_click", executor: "source" } [ as @n[type=interaction,tag=switch.npc] ]
#

# Playsound
playsound entity.villager.ambient ambient @s ^ ^ ^1

