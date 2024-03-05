
scoreboard players set @a[tag=!detached] switch.alive 6
function switch:utils/set_dynamic_time

gamerule fallDamage false
gamerule keepInventory true
gamerule showDeathMessages false
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 6 255 true
effect give @a[tag=!detached] slowness 6 255 true
effect give @a[tag=!detached] blindness 4 255 true

# Partie en équipe aléatoire
scoreboard players set #TEAM_ONESHOT switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #TEAM_ONESHOT switch.data 1
execute if score #TEAM_ONESHOT switch.data matches 1 run function switch:modes/one_shot/teams_tp/setup
execute if score #TEAM_ONESHOT switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/one_shot/teams_tp/teams


## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/one_shot

function switch:translations/modes_one_shot_start

scoreboard objectives setdisplay list switch.health
scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
scoreboard objectives add switch.temp.deathCooldown dummy
scoreboard objectives add switch.temp.kills playerKillCount {"text":"Nombre de kills","color":"gold"}
scoreboard objectives setdisplay list switch.alive

scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #one_shot_seconds switch.data 0
scoreboard players set #one_shot_ticks switch.data 0
scoreboard players set #process_end switch.data 0

# donner blindness et slownees pendant 5 secondes
effect give @a[tag=!detached] blindness 5 2 true
effect give @a[tag=!detached] slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true

# Summon 64 markers for respawn system
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] summon marker run function switch:modes/one_shot/respawn/spawn_marker
execute as @a[tag=!detached] run function switch:modes/one_shot/respawn/main

