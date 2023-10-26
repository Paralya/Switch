
gamemode spectator @a[tag=!switch.detached]
scoreboard players set @a[tag=!switch.detached] switch.alive 1

effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] resistance infinite 255 true
effect give @a[tag=!switch.detached] weakness infinite 2 true
function switch:utils/set_dynamic_time

gamerule doTileDrops false

## Téléportation des joueurs
tp @a[tag=!switch.detached] 102000 100 102000
#define bossbar rtb.all
tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Replicate the build, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #replicate_the_build_seconds switch.data -5
scoreboard players set #replicate_the_build_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.rtb.time dummy
scoreboard objectives add switch.rtb.points dummy

bossbar remove rtb.all 
bossbar add rtb.all "Début du prochain round..."
bossbar set rtb.all players @a[tag=!switch.detached]

# Initialisation des scores du round
scoreboard players set #rtb_round switch.data 1
scoreboard players set #rtb_round_state switch.data 0
scoreboard players set #rtb_round_timer switch.data 0


