
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode spectator @a
team leave @a
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a resistance infinite 255 true
effect give @a weakness infinite 2 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs + give d'items
scoreboard objectives add switch.rtb.id dummy
scoreboard players set #rtbteam switch.data 0
execute as @e[tag=switch.rtb.island,type=marker,sort=random] run function switch:modes/replicate_the_build/start/random_island


tp @a 102000 100 102000
scoreboard players set #rtbteam switch.data 0
execute as @a[sort=random] run function switch:modes/replicate_the_build/start/select_teams


gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doTileDrops false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Replicate the build, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #replicate_the_build_seconds switch.data -5
scoreboard players set #replicate_the_build_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
bossbar remove rtb.all 
bossbar add rtb.all "Commencement..."
bossbar set minecraft:rtb.all players @a


# Initialisation des scores du round
scoreboard players set #rtb_round switch.data 1
scoreboard players set #rtb_round_state switch.data 0
scoreboard players set #rtb_round_timer switch.data 0


