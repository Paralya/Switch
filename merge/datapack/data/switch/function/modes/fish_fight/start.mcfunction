
# TODO : tp les joueurs au début pour teams / conditions de team / only one winner

scoreboard players set @a[tag=!detached] switch.alive 3
function switch:utils/set_dynamic_time

execute in switch:game run gamerule fallDamage false
execute in switch:game run gamerule keepInventory true

# partie en équipe aléatoire
scoreboard players set #TEAM_FISH switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #TEAM_FISH switch.data 1
execute if score #TEAM_FISH switch.data matches 1 run function switch:modes/fish_fight/teams_tp/setup
execute if score #TEAM_FISH switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/teams_tp/teams

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"fish_fight", maps:["luxio_fish_fight"]}

#si map luxio
execute if data storage switch:main {map:"luxio_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.blue] 151026 125 151007
execute if data storage switch:main {map:"luxio_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.red] 151026 125 151045

#si map airdox
execute if data storage switch:main {map:"airdox_fish_fight"} if score #TEAM_FISH switch.data matches 0 as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/tp_airdox
execute if data storage switch:main {map:"airdox_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.blue] 155986 158 155995
execute if data storage switch:main {map:"airdox_fish_fight"} if score #TEAM_FISH switch.data matches 1 run tp @a[tag=!detached,team=switch.temp.red] 156016 156 155988

# lignes exemple
# execute if data storage switch:main {map:"pitchout_halloween"} as @a[tag=!detached,sort=random] run function switch:modes/pitchout/map_halloween/tp_give
# execute as @a[tag=!detached] run function switch:modes/fish_fight/xp_bar

function switch:translations/modes_fish_fight_start

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

scoreboard players set @a[team=!detached] switch.temp.axolotl_killed 0

scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #fish_fight_seconds switch.data 0
scoreboard players set #fish_fight_ticks switch.data 0
scoreboard players set #process_end switch.data 0

# gamemode survival
gamemode survival @a[tag=!detached]
# donner blindness et slownees pendant 5 secondes
effect give @a[tag=!detached] minecraft:blindness 5 2 true
effect give @a[tag=!detached] minecraft:slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true

