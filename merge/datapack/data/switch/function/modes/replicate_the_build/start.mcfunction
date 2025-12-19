
gamemode spectator @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 2 true
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:block_drops false

## Téléportation des joueurs
tp @a[tag=!detached] 102000 100 102000
#define bossbar rtb.all
function switch:translations/modes_replicate_the_build_start

scoreboard players set #replicate_the_build_seconds switch.data -5
scoreboard players set #replicate_the_build_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.rtb.time dummy
scoreboard objectives add switch.rtb.points dummy

bossbar remove rtb.all 
bossbar add rtb.all "Début du prochain round..."
bossbar set rtb.all players @a[tag=!detached]

# Initialisation des scores du round
scoreboard players set #rtb_round switch.data 1
scoreboard players set #rtb_round_state switch.data 0
scoreboard players set #rtb_round_timer switch.data 0


