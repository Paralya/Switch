
#> sheepwars:sheeps/passive_action
#
# @within			sheepwars:sheeps/tick_sheep
# @executed			as & at the sheep
#
# @description		Manages the sheep passive actions depending on the sheep type
#

## Apply the sheep passive action
# Tenebreux
execute if entity @s[tag=sheepwars.tenebreux] run effect give @a[gamemode=!spectator,distance=..6] darkness 1 0 true
execute if entity @s[tag=sheepwars.tenebreux] run particle dust 0 0 0 1 ~ ~ ~ 6 6 6 0 10

# Glouton
data modify entity @s[tag=sheepwars.glouton,scores={sheepwars.data=40}] NoAI set value 1b
execute if entity @s[tag=sheepwars.glouton,scores={sheepwars.data=40..}] run tp @s ^ ^ ^0.1
execute if entity @s[tag=sheepwars.glouton,scores={sheepwars.data=40..}] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air destroy
execute if entity @s[tag=sheepwars.glouton,scores={sheepwars.data=40..}] run particle block lime_terracotta ~ ~1 ~ 1 1 1 0 10

# Sismique
execute if entity @s[tag=sheepwars.sismique] as @a[gamemode=!spectator,distance=..6] at @s unless block ~ ~-.1 ~ air run effect give @s levitation 1 15 true
execute if entity @s[tag=sheepwars.sismique] run particle block brown_terracotta ~ ~ ~ 6 .5 6 0 10

# Foudroyant
execute if entity @s[tag=sheepwars.foudroyant,scores={sheepwars.data=41}] at @a[gamemode=!spectator,distance=..6] run summon lightning_bolt
execute if entity @s[tag=sheepwars.foudroyant,scores={sheepwars.data=10}] at @a[gamemode=!spectator,distance=..6] run summon lightning_bolt
execute if entity @s[tag=sheepwars.foudroyant,scores={sheepwars.data=160}] at @a[gamemode=!spectator,distance=..6] run summon lightning_bolt
execute if entity @s[tag=sheepwars.foudroyant,scores={sheepwars.data=41}] run summon lightning_bolt ~ ~-9 ~
execute if entity @s[tag=sheepwars.foudroyant,scores={sheepwars.data=100}] run summon lightning_bolt ~ ~-9 ~
execute if entity @s[tag=sheepwars.foudroyant,scores={sheepwars.data=160}] run summon lightning_bolt ~ ~-9 ~

# Glace
execute if entity @s[tag=sheepwars.glace] run effect give @a[gamemode=!spectator,distance=..6] slowness 1 2 true
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=41}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=44}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=48}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=52}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=56}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=60}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=64}] run function sheepwars:sheeps/active/glace/main
execute if entity @s[tag=sheepwars.glace,scores={sheepwars.data=68}] run function sheepwars:sheeps/active/glace/main

# Chercheur
execute if entity @s[tag=sheepwars.chercheur] if entity @p[gamemode=!spectator,distance=..2] run scoreboard players set @s sheepwars.data 150

# Distorsion
execute if entity @s[tag=sheepwars.distorsion,scores={sheepwars.data=50}] positioned ~ ~1 ~ run function realistic_explosion:explode
execute if entity @s[tag=sheepwars.distorsion,scores={sheepwars.data=90}] positioned ~ ~1 ~ run function realistic_explosion:explode
execute if entity @s[tag=sheepwars.distorsion,scores={sheepwars.data=120}] positioned ~ ~1 ~ run function realistic_explosion:explode
execute if entity @s[tag=sheepwars.distorsion,scores={sheepwars.data=140}] positioned ~ ~1 ~ run function realistic_explosion:explode
execute if entity @s[tag=sheepwars.distorsion,scores={sheepwars.data=170}] positioned ~ ~1 ~ run function realistic_explosion:explode
execute if entity @s[tag=sheepwars.distorsion] run particle dust .5 0 .5 1 ~ ~ ~ 2 2 2 0 10

# Soutien
execute if entity @s[tag=sheepwars.soutien] run effect give @a[gamemode=!spectator,distance=..3] regeneration 1 0 true
execute if entity @s[tag=sheepwars.soutien] run particle heart ~ ~ ~ 3 3 3 0 5

# Intergalactique
execute if entity @s[tag=sheepwars.intergalactique,scores={sheepwars.data=50}] run function sheepwars:sheeps/active/intergalactique/main





