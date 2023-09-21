
## Fonction executée lors du lancement de la partie
clear @a
effect clear @a
gamemode spectator @a
team leave @a
scoreboard players set @a switch.alive 1

kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a resistance infinite 255 true
effect give @a weakness infinite 2 true
difficulty normal
time set 6000
weather clear


gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doTileDrops false

#Reset de la map
scoreboard players set #is_adventure switch.data 1



execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy

kill @e[type=marker,tag=switch.rtb.island]
kill @e[type=marker,tag=switch.rtb.center]

kill @e[type=item]
kill @e[type=arrow]

## Téléportation des joueurs
tp @a 102000 100 102000




#define bossbar rtb.all

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Replicate the build, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #replicate_the_build_seconds switch.data -5
scoreboard players set #replicate_the_build_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.rtb.time dummy
scoreboard objectives add switch.rtb.points dummy

bossbar remove rtb.all 
bossbar add rtb.all "Début du prochain round..."
bossbar set rtb.all players @a


# Initialisation des scores du round
scoreboard players set #rtb_round switch.data 1
scoreboard players set #rtb_round_state switch.data 0
scoreboard players set #rtb_round_timer switch.data 0


