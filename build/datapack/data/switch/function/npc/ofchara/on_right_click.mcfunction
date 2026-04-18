
#> switch:npc/ofchara/on_right_click
#
# @executed	as @n[type=interaction,tag=switch.npc]
#
# @within	switch:npc/ofchara/summon { run: "function switch:npc/ofchara/on_right_click", executor: "source" } [ as @n[type=interaction,tag=switch.npc] ]
#

# Playsound
playsound entity.villager.ambient ambient @s ^ ^ ^1

