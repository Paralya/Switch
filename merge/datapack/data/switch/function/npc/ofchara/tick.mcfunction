
# If OfChara is not present in a radius of 1 block, spawn it.
execute unless entity @e[type=armor_stand,tag=switch.npc.ofchara] run function switch:npc/ofchara/summon

# Tick function
execute as @e[type=armor_stand,tag=switch.npc.ofchara] at @s run function switch:npc/tick {facing:"@p[gamemode=!spectator,distance=..5]"}

