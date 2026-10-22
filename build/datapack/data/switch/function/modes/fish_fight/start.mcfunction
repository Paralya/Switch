
#> switch:modes/fish_fight/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/fish_fight/calls/start
#

scoreboard players set @a[tag=!detached] switch.alive 3
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:fall_damage false
execute in switch:game run gamerule minecraft:keep_inventory true

# Equipes une partie sur deux, seulement à partir de 4 joueurs et en nombre pair
scoreboard players set #TEAM_FISH switch.data 0
execute store result score #fish_players switch.data if entity @a[tag=!detached]
scoreboard players operation #fish_parity switch.data = #fish_players switch.data
scoreboard players operation #fish_parity switch.data %= #2 switch.data
execute if score #fish_players switch.data matches 4.. if score #fish_parity switch.data matches 0 if predicate switch:chance/0.5 run scoreboard players set #TEAM_FISH switch.data 1
execute if score #TEAM_FISH switch.data matches 1 run function switch:modes/fish_fight/teams_tp/setup
execute if score #TEAM_FISH switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/teams_tp/teams

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:maps/choose_map_for {id:"fish_fight", maps:["luxio_fish_fight"]}

#si map luxio
execute if data storage switch:main {map:"luxio_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.blue] -9974 125 -11993
execute if data storage switch:main {map:"luxio_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.red] -9974 125 -11955

#si map airdox
execute if data storage switch:main {map:"airdox_fish_fight"} if score #TEAM_FISH switch.data matches 0 as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/tp_airdox
execute if data storage switch:main {map:"airdox_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.blue] -14 158 -12005
execute if data storage switch:main {map:"airdox_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.red] 16 156 -12012

# lignes exemple
# execute if data storage switch:main {map:"pitchout_halloween"} as @a[tag=!detached,sort=random] run function switch:modes/pitchout/map_halloween/tp_give
# execute as @a[tag=!detached] run function switch:modes/_common/xp_bar/three_lives

function switch:modes/fish_fight/translations/start

scoreboard objectives setdisplay list switch.health
scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
scoreboard objectives add switch.temp.deathCooldown dummy
scoreboard objectives add switch.temp.axolotl_killed_const minecraft.killed:minecraft.axolotl {"text":"AxoBonus","color":"light_purple"}
#création d'un score pour compter les axolotls tués par les joueurs
scoreboard objectives add switch.temp.axolotl_killed minecraft.killed:minecraft.axolotl
scoreboard objectives setdisplay sidebar switch.temp.axolotl_killed_const
scoreboard objectives add switch.temp.placed_white minecraft.used:minecraft.white_concrete
scoreboard objectives add switch.temp.placed_blue minecraft.used:minecraft.blue_concrete
scoreboard objectives add switch.temp.placed_red minecraft.used:minecraft.red_concrete

scoreboard players set @a[team=!detached] switch.temp.axolotl_killed 0

scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #fish_fight_seconds switch.data -1
scoreboard players set #fish_fight_ticks switch.data 0
scoreboard players set #process_end switch.data 0

# gamemode survival
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true

