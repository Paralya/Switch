
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/traitors_game

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

function switch:translations/modes_traitors_game_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 1210
scoreboard players set #traitors_game_seconds switch.data -10
scoreboard players set #traitors_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1

scoreboard objectives add switch.temp.role dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Rôles restants","color":"gold"}
scoreboard objectives add switch.temp.killed_ninja dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.visible
team modify switch.temp.visible color green

team add switch.temp.sidebar.5
team add switch.temp.sidebar.4
team add switch.temp.sidebar.3
team add switch.temp.sidebar.2
team add switch.temp.sidebar.1
team add switch.temp.sidebar.0
team modify switch.temp.sidebar.5 suffix [{"text":"Inspecteur : ","color":"green"},{"text":"1","color":"yellow"}]
team modify switch.temp.sidebar.4 suffix [{"text":"Ninja : ","color":"green"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Innocent : ","color":"green"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Traitre : ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Gros Traitre : ","color":"dark_red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.0 suffix [{"text":"Floupy : ","color":"gold"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.5 color green
team modify switch.temp.sidebar.4 color green
team modify switch.temp.sidebar.3 color green
team modify switch.temp.sidebar.2 color red
team modify switch.temp.sidebar.1 color dark_red
team modify switch.temp.sidebar.0 color gold
team join switch.temp.sidebar.5 §5
team join switch.temp.sidebar.4 §4
team join switch.temp.sidebar.3 §3
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
team join switch.temp.sidebar.0 §0
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §4 switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players set §0 switch.temp.sidebar 0

## Scenarios
# Get new players and players count
scoreboard players add @a[tag=!detached] switch.stats.played.traitors_game 0
execute store result score #count switch.data if entity @a[tag=!detached]
execute store result score #new_players switch.data if entity @a[tag=!detached,scores={switch.stats.played.traitors_game=0}]
# Traitors, affichage des scénarios supplémentaires en début de partie :
# - Détraqué : Innocent solitaire (ça peut être le ninja) (role = 8)
# - Floupy : Voleur (annule la deuxième vie du ninja) (role = 7)
# - Silencieux : n'importe qui peut avoir (1st kill non affiché).
scoreboard players set #sc_solitaire switch.data 0
scoreboard players set #sc_floupy switch.data 0
scoreboard players set #sc_silencieux switch.data 0
execute unless score #new_players switch.data matches 3.. if score #count switch.data matches 8.. if predicate switch:chance/0.5 run scoreboard players set #sc_solitaire switch.data 1
execute unless score #new_players switch.data matches 3.. if score #count switch.data matches 8.. if predicate switch:chance/0.5 run scoreboard players set #sc_floupy switch.data 1
execute unless score #new_players switch.data matches 3.. if predicate switch:chance/0.5 run scoreboard players set #sc_silencieux switch.data 1
scoreboard players set #has_scenarios switch.data 1
execute if score #sc_solitaire switch.data matches 0 if score #sc_floupy switch.data matches 0 if score #sc_silencieux switch.data matches 0 run scoreboard players set #has_scenarios switch.data 0

# Choix des rôles
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/traitors_game/roles/
execute as @a[tag=!detached] at @s run function switch:modes/traitors_game/give_items
function switch:modes/traitors_game/update_sidebar

