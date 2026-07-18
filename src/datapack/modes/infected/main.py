
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "infected"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /detect_end
	write_function(f"{path}/detect_end", f"""
# 0 = Victoire Humains
# 1 = Victoire Zombies
# 2 = Plus personne

scoreboard players set #game_state {ns}.data 0
execute if entity @a[team={ns}.temp.zombie] unless entity @a[team={ns}.temp.human] run scoreboard players set #game_state {ns}.data 1
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state {ns}.data 2
execute if score #game_state {ns}.data matches 1.. run scoreboard players set #remaining_time {ns}.data -1000
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode adventure @s
execute if score #reconnect {ns}.data matches 0 if score #infected_seconds {ns}.data matches ..-1 run function {ns}:modes/infected/death/early_respawn
execute if score #reconnect {ns}.data matches 0 if score #infected_seconds {ns}.data matches 0.. run scoreboard players set @s {ns}.temp.original_zombie 1
execute if score #infected_seconds {ns}.data matches 0.. run function {ns}:modes/infected/death/zombie_spawn
""")

	# /no_drop
	write_function(f"{path}/no_drop", f"""
tag @s add {ns}.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

# If zombie hands, remove the item
execute if data entity @s Item.components."minecraft:custom_data".{ns}.zombie_hands run kill @s
""")

	# /player_tick
	write_function(f"{path}/player_tick", f"""
# Give saturation not indefinitely
execute unless data entity @s {{foodLevel:20}} run effect give @s saturation 1 0 true

# If zombie, make sure it has the zombie hands, and the armor
execute if entity @s[team={ns}.temp.zombie] unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot {ns}:i/zombie_hands
execute if entity @s[team={ns}.temp.zombie] unless data entity @s equipment.chest run loot replace entity @s armor.chest loot {ns}:i/zombie_chest
execute if entity @s[team={ns}.temp.zombie] unless data entity @s equipment.legs run loot replace entity @s armor.legs loot {ns}:i/zombie_legs
execute if entity @s[team={ns}.temp.zombie] unless data entity @s equipment.feet run loot replace entity @s armor.feet loot {ns}:i/zombie_feet
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Victory
function {ns}:modes/infected/translations/process_end

# Advancements
execute if score #process_end {ns}.data matches 1 if score #game_state {ns}.data matches 0 unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,team={ns}.temp.human,scores={{{ns}.temp.hits_gotten=0}}] only {ns}:visible/57
execute if score #process_end {ns}.data matches 1 if score #game_state {ns}.data matches 0 store result score #nb_humans {ns}.data if entity @a[tag=!detached,team={ns}.temp.human]
execute if score #process_end {ns}.data matches 1 if score #game_state {ns}.data matches 0 store result score #nb_players {ns}.data if entity @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 if score #game_state {ns}.data matches 0 unless score #test_mode {ns}.data matches 1 if score #nb_humans {ns}.data matches 1 if score #nb_players {ns}.data matches 10.. run advancement grant @s only {ns}:visible/74

# Give money + son de fin
execute if score #process_end {ns}.data matches 1 if score #game_state {ns}.data matches 0 as @a[tag=!detached,team={ns}.temp.human] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 if score #game_state {ns}.data matches 1 as @a[tag=!detached,team={ns}.temp.zombie,scores={{{ns}.temp.original_zombie=1}}] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #infected_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1
execute if score #infected_seconds {ns}.data matches 0.. run function {ns}:modes/infected/xp_bar

# Store human and zombie counts for title action bar
execute store result score #nb_humans {ns}.data if entity @a[team={ns}.temp.human]
execute store result score #nb_zombies {ns}.data if entity @a[team={ns}.temp.zombie]

# Second function for starting the game
execute if score #infected_seconds {ns}.data matches ..10 run function {ns}:modes/infected/second_start

# Player infection
execute as @a[scores={{{ns}.temp.infection=1..}}] at @s run function {ns}:modes/infected/death/infection_second

# If there are no zombies left, infect a random human
execute if score #infected_seconds {ns}.data matches 7.. run function {ns}:modes/infected/second_selector

# Regen & Arrow give
execute if score #infected_seconds {ns}.data matches 10.. run function {ns}:modes/infected/second_regen

# Advancements
execute unless score #test_mode {ns}.data matches 1 as @a[team={ns}.temp.human] if score @s {ns}.temp.kills matches 8.. run advancement grant @s only {ns}:visible/16
execute unless score #test_mode {ns}.data matches 1 as @a[team={ns}.temp.zombie] if score @s {ns}.temp.kills matches 5.. run advancement grant @s only {ns}:visible/17

# Detect end of the game
execute if score #infected_seconds {ns}.data matches 0.. if score #remaining_time {ns}.data matches 0.. run function {ns}:modes/infected/detect_end
""")

	# /second_regen
	write_function(f"{path}/second_regen", f"""
# Effect give every 10 seconds
scoreboard players operation #temp {ns}.data = #infected_seconds {ns}.data
scoreboard players operation #temp {ns}.data %= #10 {ns}.data
execute if score #temp {ns}.data matches 0 run effect give @a[tag=!detached] regeneration 1 2 true

# Give arrow every 40 seconds
scoreboard players operation #arrow_give {ns}.data = #infected_seconds {ns}.data
scoreboard players operation #arrow_give {ns}.data %= #40 {ns}.data
execute if score #infected_seconds {ns}.data matches 60 run give @a[team={ns}.temp.human] bow[unbreakable={{}}]
execute if score #infected_seconds {ns}.data matches 60.. if score #arrow_give {ns}.data matches 0 as @a[team={ns}.temp.human] run function {ns}:modes/infected/give_arrow/main
""")

	# /second_selector (translation ref rewritten)
	write_function(f"{path}/second_selector", f"""
# Secondary infection system - handles automatic zombie selection when no zombies remain
# This function manages the countdown and automatic infection process

# Play warning sound to all players during countdown (seconds 7-9)
execute if score #infected_seconds {ns}.data matches 7..9 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

# At 10 seconds: First infection attempt
# Priority: Infect a random human who doesn't want to avoid being infected
execute if score #infected_seconds {ns}.data matches 10 if entity @p[team={ns}.temp.human,scores={{{ns}.temp.dont_want_to_be_infected=0}}] as @r[team={ns}.temp.human,scores={{{ns}.temp.dont_want_to_be_infected=0}}] run function {ns}:modes/infected/death/launch_infection
# Fallback: If no willing humans, infect any random human
execute if score #infected_seconds {ns}.data matches 10 unless entity @p[team={ns}.temp.human,scores={{{ns}.temp.dont_want_to_be_infected=0}}] as @r[team={ns}.temp.human] run function {ns}:modes/infected/death/launch_infection
# Mark the infected player as the original zombie for this round
execute if score #infected_seconds {ns}.data matches 10 run scoreboard players set @p[scores={{{ns}.temp.infection=1}}] {ns}.temp.original_zombie 1

# At 25+ seconds: Emergency infection system when no zombies exist
# Check if there are willing humans available and no current zombies or infected players
execute if score #infected_seconds {ns}.data matches 25.. if entity @p[team={ns}.temp.human,scores={{{ns}.temp.dont_want_to_be_infected=0}}] unless entity @a[team={ns}.temp.zombie] unless entity @a[team={ns}.temp.human,scores={{{ns}.temp.infection=1..,{ns}.temp.dont_want_to_be_infected=0}}] run tag @r[team={ns}.temp.human] add {ns}.to_infect
# Emergency fallback: If no willing humans, tag any human for infection
execute if score #infected_seconds {ns}.data matches 25.. unless entity @p[team={ns}.temp.human,scores={{{ns}.temp.dont_want_to_be_infected=0}}] unless entity @a[team={ns}.temp.zombie] unless entity @a[team={ns}.temp.human,scores={{{ns}.temp.infection=1..}}] run tag @r[team={ns}.temp.human] add {ns}.to_infect
# Execute the infection on the tagged player
execute if score #infected_seconds {ns}.data matches 25.. as @p[tag={ns}.to_infect] run function {ns}:modes/infected/death/launch_infection
# Mark the emergency infected player as original zombie
execute if score #infected_seconds {ns}.data matches 25.. run scoreboard players set @p[tag={ns}.to_infect] {ns}.temp.original_zombie 1
# Clean up the infection tag
execute if score #infected_seconds {ns}.data matches 25.. run tag @a[tag={ns}.to_infect] remove {ns}.to_infect

# Display translated messages to players about the infection process
function {ns}:modes/infected/translations/second_selector
""")

	# /second_start (translation ref rewritten)
	write_function(f"{path}/second_start", f"""
# Players can't die during start countdown
execute if score #infected_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] resistance 3 255 true
execute if score #infected_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] regeneration 3 255 true
execute if score #infected_seconds {ns}.data matches ..0 as @a[tag=!detached] run attribute @s burning_time base set 0
execute if score #infected_seconds {ns}.data matches 1..10 as @a[tag=!detached] run attribute @s burning_time base reset

# Countdown for starting the game
execute if score #infected_seconds {ns}.data matches -10..-2 run scoreboard players operation #temp {ns}.data = #infected_seconds {ns}.data
execute if score #infected_seconds {ns}.data matches -10..-2 run scoreboard players operation #temp {ns}.data *= #-1 {ns}.data
execute if score #infected_seconds {ns}.data matches -3..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #infected_seconds {ns}.data matches 0 run function {ns}:modes/infected/secrets/load
execute if score #infected_seconds {ns}.data matches 0 as @a[tag=!detached] at @s run function {ns}:modes/infected/death/human_spawn

# Tellraws
function {ns}:modes/infected/translations/second_start
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
## Placement de la map et des joueurs
time set 18000
function {ns}:utils/choose_map_for {{id:"infected", maps:["area_51","ancienne_egypte_2013","old_japan_apocalypse","lost_graveyard_remastered"]}}
execute as @a[tag=!detached] run function {ns}:modes/infected/death/early_respawn

function {ns}:modes/infected/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true
execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:block_drops false

scoreboard objectives add {ns}.temp.dont_want_to_be_infected trigger
scoreboard objectives add {ns}.temp.infection dummy
scoreboard objectives add {ns}.temp.original_zombie dummy
scoreboard objectives add {ns}.temp.kills playerKillCount
scoreboard objectives add {ns}.temp.hits_gotten dummy
scoreboard players set #remaining_time {ns}.data 462
scoreboard players set #infected_secret {ns}.data 0
scoreboard players set #infected_seconds {ns}.data -11
scoreboard players set #infected_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives setdisplay list {ns}.health

# Timer depending on players count
execute store result score #count {ns}.data if entity @a[tag=!detached]
scoreboard players operation #count {ns}.data *= #15 {ns}.data
scoreboard players operation #remaining_time {ns}.data += #count {ns}.data
execute if score #remaining_time {ns}.data matches 600.. run scoreboard players set #remaining_time {ns}.data 600

# Choix des rôles + give d'items
team add {ns}.temp.human {{"text":"[Human]","color":"light_purple"}}
team add {ns}.temp.zombie {{"text":"[Zombie]","color":"dark_green"}}
team modify {ns}.temp.human color light_purple
team modify {ns}.temp.zombie color dark_green
team modify {ns}.temp.human friendlyFire false
team modify {ns}.temp.zombie friendlyFire false
team modify {ns}.temp.human nametagVisibility never
team modify {ns}.temp.zombie nametagVisibility never
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.human
team remove {ns}.temp.zombie
scoreboard objectives remove {ns}.temp.dont_want_to_be_infected
scoreboard objectives remove {ns}.temp.infection
scoreboard objectives remove {ns}.temp.original_zombie
scoreboard objectives remove {ns}.temp.kills

# Secrets objectives
scoreboard objectives remove {ns}.temp.secret_kills
scoreboard objectives remove {ns}.temp.radio_trigger
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #infected_ticks {ns}.data 1

# Détection de la mort
function {ns}:utils/on_death_run_function {{function:"{ns}:modes/infected/death/zombie_spawn"}}

# Ticking function on all players
execute as @a[tag=!detached] run function {ns}:modes/infected/player_tick

# Prevent drop + kill arrow
execute as @e[type=item,tag=!{ns}.checked] run function {ns}:modes/infected/no_drop
kill @e[type=arrow,nbt={{inBlockState:{{}}}}]
execute as @e[type=arrow] run data modify entity @s damage set value 0.5d

# Maps tick
execute if score #infected_seconds {ns}.data matches 0.. run function {ns}:modes/infected/secrets/tick

# Détection de fin de partie
execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/infected/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 450)

	# === advancements ===

	# /advancements/antidote
	write_function(f"{path}/advancements/antidote", f"""
advancement revoke @s only {ns}:infected/antidote
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"infected"}} if entity @s[team={ns}.temp.human] if score @s {ns}.temp.infection matches 1.. run function {ns}:modes/infected/death/cure
""")

	# /advancements/apply_damage
	write_function(f"{path}/advancements/apply_damage", """
$damage @s $(damage) player_attack
""")

	# /advancements/inventory_changed
	write_function(f"{path}/advancements/inventory_changed", f"""
advancement revoke @s only {ns}:infected/inventory_changed
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"infected"}} run function {ns}:modes/infected/advancements/inventory_changed_confirm
""")

	# /advancements/inventory_changed_confirm
	write_function(f"{path}/advancements/inventory_changed_confirm", f"""
# Copy Inventory
data modify storage {ns}:temp Inventory set from entity @s Inventory

# Replace classic redstone torch with a custom one
scoreboard players set #success {ns}.data 0
execute store success score #success {ns}.data run data modify storage {ns}:temp temp set from storage {ns}:temp Inventory[{{id:"minecraft:redstone_torch"}}]
execute if score #success {ns}.data matches 1 if data storage {ns}:temp temp.components."minecraft:custom_data".{ns}.redstone_torch run scoreboard players set #success {ns}.data 0
execute if score #success {ns}.data matches 1 if data storage {ns}:main {{map:"area_51"}} run data modify storage {ns}:temp input set value {{Slot:7b,count:1,with:'redstone_torch[custom_data={{{ns}:{{redstone_torch:true}}}},can_place_on={{blocks:["cracked_polished_blackstone_bricks"]}}]'}}
execute if score #success {ns}.data matches 1 if data storage {ns}:main {{map:"ancienne_egypte_2013"}} run data modify storage {ns}:temp input set value {{Slot:7b,count:1,with:'redstone_torch[custom_data={{{ns}:{{redstone_torch:true}}}},can_place_on={{blocks:["red_sandstone"]}}]'}}
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.Slot set from storage {ns}:temp temp.Slot
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.count set from storage {ns}:temp temp.count
execute if score #success {ns}.data matches 1 run function {ns}:modes/infected/advancements/macro_slot with storage {ns}:temp input

# Replace classic potion with a custom one
scoreboard players set #success {ns}.data 0
execute store success score #success {ns}.data run data modify storage {ns}:temp temp set from storage {ns}:temp Inventory[{{id:"minecraft:potion",components:{{"minecraft:potion_contents":{{potion:"minecraft:water"}}}}}}]
execute if score #success {ns}.data matches 1 if data storage {ns}:temp temp.components."minecraft:custom_data".{ns}.water_bottle run scoreboard players set #success {ns}.data 0
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input set value {{Slot:7b,count:1,with:'potion[custom_data={{{ns}:{{water_bottle:true}}}},item_name={{"text":"Zombie blood","italic":false,"color":"light_purple"}},lore=[{{"text":"Infected","italic":true,"color":"dark_green"}}]]'}}
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.Slot set from storage {ns}:temp temp.Slot
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.count set from storage {ns}:temp temp.count
execute if score #success {ns}.data matches 1 run function {ns}:modes/infected/advancements/macro_slot with storage {ns}:temp input

# Replace tnt with a custom one
scoreboard players set #success {ns}.data 0
execute store success score #success {ns}.data run data modify storage {ns}:temp temp set from storage {ns}:temp Inventory[{{id:"minecraft:tnt"}}]
execute if score #success {ns}.data matches 1 if data storage {ns}:temp temp.components."minecraft:custom_data".{ns}.tnt run scoreboard players set #success {ns}.data 0
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input set value {{Slot:7b,count:1,with:'tnt[custom_data={{{ns}:{{tnt:true}}}},can_place_on={{blocks:["scaffolding"]}},item_name={{"text":"TNT","italic":false,"color":"light_purple"}},lore=[{{"text":"Infected","italic":true,"color":"dark_green"}}]]'}}
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.Slot set from storage {ns}:temp temp.Slot
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.count set from storage {ns}:temp temp.count
execute if score #success {ns}.data matches 1 run function {ns}:modes/infected/advancements/macro_slot with storage {ns}:temp input

# Replace flint and steel with a custom one
scoreboard players set #success {ns}.data 0
execute store success score #success {ns}.data run data modify storage {ns}:temp temp set from storage {ns}:temp Inventory[{{id:"minecraft:flint_and_steel"}}]
execute if score #success {ns}.data matches 1 if data storage {ns}:temp temp.components."minecraft:custom_data".{ns}.flint_and_steel run scoreboard players set #success {ns}.data 0
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input set value {{Slot:7b,count:1,with:'flint_and_steel[custom_data={{{ns}:{{flint_and_steel:true}}}},can_place_on={{blocks:["tnt"]}},item_name={{"text":"Flint and steel","italic":false,"color":"light_purple"}},lore=[{{"text":"Infected","italic":true,"color":"dark_green"}}]]'}}
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.Slot set from storage {ns}:temp temp.Slot
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.count set from storage {ns}:temp temp.count
execute if score #success {ns}.data matches 1 run function {ns}:modes/infected/advancements/macro_slot with storage {ns}:temp input

# Replace beacon with a custom one
scoreboard players set #success {ns}.data 0
execute store success score #success {ns}.data run data modify storage {ns}:temp temp set from storage {ns}:temp Inventory[{{id:"minecraft:beacon"}}]
execute if score #success {ns}.data matches 1 if data storage {ns}:temp temp.components."minecraft:custom_data".{ns}.beacon run scoreboard players set #success {ns}.data 0
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input set value {{Slot:7b,count:1,with:'beacon[custom_data={{{ns}:{{beacon:true}}}},can_place_on={{blocks:["gold_block"]}},item_name={{"text":"Bacon","italic":false,"color":"light_purple"}},lore=[{{"text":"Infected","italic":true,"color":"dark_green"}}]]'}}
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.Slot set from storage {ns}:temp temp.Slot
execute if score #success {ns}.data matches 1 run data modify storage {ns}:temp input.count set from storage {ns}:temp temp.count
execute if score #success {ns}.data matches 1 run function {ns}:modes/infected/advancements/macro_slot with storage {ns}:temp input
""")

	# /advancements/macro_slot
	write_function(f"{path}/advancements/macro_slot", """
$item replace entity @s container.$(Slot) with $(with) $(count)
""")

	# /advancements/entity_hurt_player/check_double_damage
	write_function(f"{path}/advancements/entity_hurt_player/check_double_damage", f"""
# If less than 10% are zombies, double the damage
execute store result score #current_human_count {ns}.data if entity @a[tag=!detached,team={ns}.temp.human]
scoreboard players operation #percentage {ns}.data = #current_zombie_count {ns}.data
scoreboard players operation #percentage {ns}.data *= #100 {ns}.data
scoreboard players operation #percentage {ns}.data /= #current_human_count {ns}.data
execute if score #percentage {ns}.data matches ..10 run scoreboard players operation #damage {ns}.data *= #2 {ns}.data
""")

	# /advancements/entity_hurt_player/confirm
	write_function(f"{path}/advancements/entity_hurt_player/confirm", f"""
# In every case, particles of blood
particle block{{block_state:"redstone_wire"}} ~ ~1 ~ 0.35 0.5 0.35 0 100 force @a[distance=..100]

# If the attacker is a zombie, tag him for selection and apply damage logic
scoreboard players set #zombie_attacker {ns}.data 0
execute on attacker if entity @s[team={ns}.temp.zombie] store success score #zombie_attacker {ns}.data run tag @s add {ns}.temp
execute if score #zombie_attacker {ns}.data matches 1 run function {ns}:modes/infected/advancements/entity_hurt_player/is_zombie_attacker

# Remove the temporary tag
tag @a[tag={ns}.temp] remove {ns}.temp

# Increment the number of hits gotten (for an advancement)
scoreboard players add @s {ns}.temp.hits_gotten 1
""")

	# /advancements/entity_hurt_player/is_zombie_attacker
	write_function(f"{path}/advancements/entity_hurt_player/is_zombie_attacker", f"""
# Take the damage points of the attacker and compare it to the health of the victim
scoreboard players set #damage {ns}.data 280
execute on attacker if score @s {ns}.infected.zombie_strength matches 1 run scoreboard players set #damage {ns}.data 285
execute on attacker if score @s {ns}.infected.zombie_strength matches 2 run scoreboard players set #damage {ns}.data 290
execute on attacker if score @s {ns}.infected.zombie_strength matches 3 run scoreboard players set #damage {ns}.data 295
execute on attacker if score @s {ns}.infected.zombie_strength matches 4 run scoreboard players set #damage {ns}.data 300
execute on attacker if score @s {ns}.infected.zombie_strength matches 5 run scoreboard players set #damage {ns}.data 305
execute on attacker if score @s {ns}.infected.zombie_strength matches 6 run scoreboard players set #damage {ns}.data 310
execute on attacker if score @s {ns}.infected.zombie_strength matches 7 run scoreboard players set #damage {ns}.data 315
execute on attacker if score @s {ns}.infected.zombie_strength matches 8 run scoreboard players set #damage {ns}.data 320

# If only one zombie is left, double the damage
execute store result score #current_zombie_count {ns}.data if entity @a[tag=!detached,team={ns}.temp.zombie]
execute if score #current_zombie_count {ns}.data matches 1 run scoreboard players operation #damage {ns}.data *= #2 {ns}.data

# If less than 10% are zombies, double the damage
execute if score #current_zombie_count {ns}.data matches 2.. run function {ns}:modes/infected/advancements/entity_hurt_player/check_double_damage

# Get the victim's health
execute store result score #health {ns}.data run data get entity @s Health 100
scoreboard players operation #health {ns}.data -= #damage {ns}.data

# If the victim's health is less than or equal to 0, launch the infection
execute if score #health {ns}.data matches ..0 run return run function {ns}:modes/infected/death/launch_infection

# Else, apply the damage to the victim
data modify storage {ns}:main input set value {{damage:0}}
execute store result storage {ns}:main input.damage int 0.01 run scoreboard players get #damage {ns}.data
function {ns}:modes/infected/advancements/apply_damage with storage {ns}:main input
""")

	# /advancements/entity_hurt_player/main
	write_function(f"{path}/advancements/entity_hurt_player/main", f"""
advancement revoke @s only {ns}:infected/entity_hurt_player
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"infected"}} run function {ns}:modes/infected/advancements/entity_hurt_player/confirm
""")

	# === death ===

	# /death/cure (translation ref rewritten)
	write_function(f"{path}/death/cure", f"""
effect clear @s resistance
effect clear @s regeneration
effect clear @s blindness
effect clear @s slowness
scoreboard players reset @s {ns}.temp.infection
playsound entity.zombie_villager.cure ambient @a[distance=..24]
particle happy_villager ~ ~1 ~ 0.35 0.5 0.35 0.1 50
function {ns}:modes/infected/translations/death_cure
""")

	# /death/early_respawn
	write_function(f"{path}/death/early_respawn", f"""
team join {ns}.temp.human @s
execute if data storage {ns}:main {{map:"area_51"}} run tp @s 2057 171 2065 0 0
execute if data storage {ns}:main {{map:"ancienne_egypte_2013"}} run tp @s 128048 121 128105 0 0
execute if data storage {ns}:main {{map:"old_japan_apocalypse"}} run tp @s 129040 109 129043 -90 0
execute if data storage {ns}:main {{map:"lost_graveyard_remastered"}} run tp @s 127030 119 127112 0 0
effect clear @s
clear @s
effect give @s hunger 20 255 true
""")

	# /death/human_give
	write_function(f"{path}/death/human_give", f"""
# Clear old shop items (if any)
clear @s *[custom_data~{{{ns}:{{}}}}]

# Give sword
execute if score @s {ns}.infected.sword matches 0 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_0
execute if score @s {ns}.infected.sword matches 1 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_1
execute if score @s {ns}.infected.sword matches 2 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_2
execute if score @s {ns}.infected.sword matches 3 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_3
execute if score @s {ns}.infected.sword matches 4 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_4
execute if score @s {ns}.infected.sword matches 5 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_5
execute if score @s {ns}.infected.sword matches 6 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_6
execute if score @s {ns}.infected.sword matches 7 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_7
execute if score @s {ns}.infected.sword matches 8 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_8
execute if score @s {ns}.infected.sword matches 9 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_9
execute if score @s {ns}.infected.sword matches 10 run loot replace entity @s hotbar.0 loot {ns}:i/infected_sword_10

# Give armor
execute if score @s {ns}.infected.armor matches 0 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_0
execute if score @s {ns}.infected.armor matches 1 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_1
execute if score @s {ns}.infected.armor matches 2 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_2
execute if score @s {ns}.infected.armor matches 3 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_3
execute if score @s {ns}.infected.armor matches 4 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_4
execute if score @s {ns}.infected.armor matches 5 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_5
execute if score @s {ns}.infected.armor matches 6 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_6
execute if score @s {ns}.infected.armor matches 7 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_7
execute if score @s {ns}.infected.armor matches 8 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_8
execute if score @s {ns}.infected.armor matches 9 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_9
execute if score @s {ns}.infected.armor matches 10 run loot replace entity @s armor.chest loot {ns}:i/infected_armor_10
""")

	# /death/human_spawn
	write_function(f"{path}/death/human_spawn", f"""
team join {ns}.temp.human @s
execute if data storage {ns}:main {{map:"area_51"}} run tp @s 2017 158 2098 -90 0
execute if data storage {ns}:main {{map:"ancienne_egypte_2013"}} run tp @s 128089 133 128095 180 0
execute if data storage {ns}:main {{map:"old_japan_apocalypse"}} run tp @s 129013 105 129018 180 0
execute if data storage {ns}:main {{map:"lost_graveyard_remastered"}} run tp @s 127055 129 127046 -90 0
scoreboard players enable @s {ns}.temp.dont_want_to_be_infected
scoreboard players set @s {ns}.temp.hits_gotten 0
attribute @s attack_speed base set 2048.0
effect clear @s
clear @s

# Give stuff depending on player's upgrades
function {ns}:modes/infected/death/human_give

# Playsound
execute at @s run playsound entity.ender_dragon.growl ambient @s
effect give @s blindness 3 0 true
effect give @s regeneration 10 255 true
""")

	# /death/infection_second
	write_function(f"{path}/death/infection_second", f"""
damage @s 0.00001
playsound entity.zombie.hurt ambient @a[distance=..16]
particle lava ~ ~1 ~ 0.35 0.5 0.35 0 5 force @a[distance=..100]
scoreboard players add @s {ns}.temp.infection 1
scoreboard players reset @s {ns}.temp.kills
execute if score @s {ns}.temp.infection matches 11.. run function {ns}:modes/infected/death/zombie_transform
""")

	# /death/launch_infection (translation ref rewritten)
	write_function(f"{path}/death/launch_infection", f"""
function {ns}:modes/infected/death/infection_second
effect give @s regeneration 10 255 true
effect give @s resistance 10 255 true
effect give @s blindness 10 255 true
effect give @s slowness 10 255 true

# Infection message if player is infected by another player
function {ns}:modes/infected/translations/death_launch_infection
execute unless score @s {ns}.temp.infection matches 2.. run scoreboard players add @p[tag={ns}.temp] {ns}.temp.kills 1
""")

	# /death/zombie_give
	write_function(f"{path}/death/zombie_give", f"""
team join {ns}.temp.zombie @s
scoreboard players reset @s {ns}.temp.infection
attribute @s attack_damage base set 0.00001
attribute @s attack_speed base set 2048.0
effect clear @s
effect give @s hunger infinite 0 true
effect give @s resistance infinite 0 true
clear @s


# Give stuff depending on player's upgrades
execute if score @s {ns}.infected.zombie_speed matches 0 run attribute @s movement_speed base set 0.115
execute if score @s {ns}.infected.zombie_speed matches 1 run attribute @s movement_speed base set 0.116
execute if score @s {ns}.infected.zombie_speed matches 2 run attribute @s movement_speed base set 0.117
execute if score @s {ns}.infected.zombie_speed matches 3 run attribute @s movement_speed base set 0.118
execute if score @s {ns}.infected.zombie_speed matches 4 run attribute @s movement_speed base set 0.119
execute if score @s {ns}.infected.zombie_speed matches 5 run attribute @s movement_speed base set 0.120
execute if score @s {ns}.infected.zombie_speed matches 6 run attribute @s movement_speed base set 0.121
execute if score @s {ns}.infected.zombie_speed matches 7 run attribute @s movement_speed base set 0.122
execute if score @s {ns}.infected.zombie_speed matches 8 run attribute @s movement_speed base set 0.123
execute if score @s {ns}.infected.zombie_speed matches 9 run attribute @s movement_speed base set 0.124
execute if score @s {ns}.infected.zombie_speed matches 10 run attribute @s movement_speed base set 0.125
execute if score @s {ns}.infected.zombie_jump matches 0 run effect give @s jump_boost infinite 0 true
execute if score @s {ns}.infected.zombie_jump matches 1 run effect give @s jump_boost infinite 1 true
""")

	# /death/zombie_spawn
	write_function(f"{path}/death/zombie_spawn", f"""
execute if data storage {ns}:main {{map:"area_51"}} run tp @s 2060 145 2029 0 0
execute if data storage {ns}:main {{map:"ancienne_egypte_2013"}} run tp @s 128007 133 128005 -90 0
execute if data storage {ns}:main {{map:"old_japan_apocalypse"}} run tp @s 129086 110 129020 90 0
execute if data storage {ns}:main {{map:"lost_graveyard_remastered"}} run tp @s 127009 116 127058 90 0
scoreboard players set @s[team={ns}.temp.human] {ns}.temp.kills 0
function {ns}:modes/infected/death/zombie_give
effect give @s blindness 10 0 true
effect give @s regeneration 10 255 true
""")

	# /death/zombie_transform
	write_function(f"{path}/death/zombie_transform", f"""
function {ns}:modes/infected/death/zombie_give
playsound entity.firework_rocket.twinkle ambient @a[distance=..16]
particle firework ~ ~1 ~ 0 0 0 0.25 50
""")

	# === give_arrow ===

	# /give_arrow/have_one_slot_arrow
	write_function(f"{path}/give_arrow/have_one_slot_arrow", """
$item replace entity @s container.$(Slot) with arrow $(count)
""")

	# /give_arrow/main
	write_function(f"{path}/give_arrow/main", f"""
# Try to get slot and count
data modify storage {ns}:temp input set value {{Slot:-1b,count:0}}
data modify storage {ns}:temp input.Slot set from entity @s Inventory[{{id:"minecraft:arrow"}}].Slot
data modify storage {ns}:temp input.count set from entity @s Inventory[{{id:"minecraft:arrow"}}].count
execute store result score #count {ns}.data run data get storage {ns}:temp input.count
scoreboard players add #count {ns}.data 1
execute store result storage {ns}:temp input.count int 1 run scoreboard players get #count {ns}.data

# If slot is different from -1, then we have an arrow
execute unless data storage {ns}:temp input{{Slot:-1b}} run function {ns}:modes/infected/give_arrow/have_one_slot_arrow with storage {ns}:temp input

# Else, give arrow to the hotbar slot 8 or anywhere
execute if data storage {ns}:temp input{{Slot:-1b}} if data entity @s Inventory[{{Slot:8b}}] run give @s arrow
execute if data storage {ns}:temp input{{Slot:-1b}} unless data entity @s Inventory[{{Slot:8b}}] run item replace entity @s hotbar.8 with arrow
""")

	# === secrets ===

	# /secrets/check_if_all_secrets
	write_function(f"{path}/secrets/check_if_all_secrets", f"""
execute unless score #test_mode {ns}.data matches 1 run advancement grant @s[advancements={{{ns}:visible/50=true,{ns}:visible/51=true,{ns}:visible/52=true,{ns}:visible/53=true}}] only {ns}:visible/54
""")

	# /secrets/drop_element_115
	write_function(f"{path}/secrets/drop_element_115", f"""
clear @s *[minecraft:custom_data={{{ns}:{{"element_115":true}}}}] 1
loot spawn ~ ~ ~ loot {ns}:i/element_115
execute as @e[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{{ns}:{{"element_115":true}}}}}}}}}}] run data modify entity @s Owner set from entity @p[tag=!detached,team={ns}.temp.human] UUID
""")

	# /secrets/load
	write_function(f"{path}/secrets/load", f"""
execute if data storage {ns}:main {{map:"area_51"}} run function {ns}:modes/infected/secrets/area_51/_load
execute if data storage {ns}:main {{map:"ancienne_egypte_2013"}} run function {ns}:modes/infected/secrets/ancienne_egypte/_load
execute if data storage {ns}:main {{map:"old_japan_apocalypse"}} run function {ns}:modes/infected/secrets/old_japan_apocalypse/_load
execute if data storage {ns}:main {{map:"lost_graveyard_remastered"}} run function {ns}:modes/infected/secrets/lost_graveyard/_load
""")

	# /secrets/tick
	write_function(f"{path}/secrets/tick", f"""
execute if data storage {ns}:main {{map:"area_51"}} run function {ns}:modes/infected/secrets/area_51/_tick
execute if data storage {ns}:main {{map:"ancienne_egypte_2013"}} run function {ns}:modes/infected/secrets/ancienne_egypte/_tick
execute if data storage {ns}:main {{map:"old_japan_apocalypse"}} run function {ns}:modes/infected/secrets/old_japan_apocalypse/_tick
execute if data storage {ns}:main {{map:"lost_graveyard_remastered"}} run function {ns}:modes/infected/secrets/lost_graveyard/_tick

# Zombie drop element 115
execute as @a[tag=!detached,team={ns}.temp.zombie,nbt={{Inventory:[{{components:{{"minecraft:custom_data":{{{ns}:{{"element_115":true}}}}}}}}]}}] at @s run function {ns}:modes/infected/secrets/drop_element_115
""")

	# /secrets/ancienne_egypte/_load
	write_function(f"{path}/secrets/ancienne_egypte/_load", f"""
scoreboard players set #infected_secret {ns}.data 0

""")

	# /secrets/ancienne_egypte/_tick
	write_function(f"{path}/secrets/ancienne_egypte/_tick", f"""
# Items to pickup
execute if score #infected_secret {ns}.data matches 0..1 unless entity @e[type=item,tag={ns}.infected.stick] run summon item 128028 120 128106 {{Tags:["{ns}.infected.stick","{ns}.infected.item"],Item:{{id:"minecraft:stick",count:1,components:{{"minecraft:item_name":{{"text":"Torch stick","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute if score #infected_secret {ns}.data matches 0..1 unless entity @e[type=item,tag={ns}.infected.redstone] run summon item 128010 138 128078 {{Tags:["{ns}.infected.redstone","{ns}.infected.item"],Item:{{id:"minecraft:redstone",count:1,components:{{"minecraft:item_name":{{"text":"Redstone","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute as @e[tag={ns}.infected.item] at @s run function {ns}:modes/infected/secrets/ancienne_egypte/item_tick

## State checks
# Check jukebox
execute if score #infected_secret {ns}.data matches 0 positioned 128069 120 128084 if block ~ ~ ~ jukebox[has_record=true] run function {ns}:modes/infected/secrets/ancienne_egypte/next_state

# Check redstone torch
execute if score #infected_secret {ns}.data matches 1 positioned 128069 115 128087 if block ~ ~ ~ redstone_torch run function {ns}:modes/infected/secrets/ancienne_egypte/next_state

# Check for humans finishing the last parkour
execute if score #infected_secret {ns}.data matches 3.. positioned 128077 110 128046 as @a[tag=!detached,team={ns}.temp.human,distance=..4] run function {ns}:modes/infected/secrets/ancienne_egypte/next_state
""")

	# /secrets/ancienne_egypte/button_black (translation ref rewritten)
	write_function(f"{path}/secrets/ancienne_egypte/button_black", f"""
## Black button: sacrificing the other room
# Check if both sides are lit
execute unless score #infected_secret {ns}.data matches 2 run return 0
scoreboard players set #success {ns}.data 0
execute if block 128070 112 128093 redstone_lamp[lit=true] if block 128068 112 128093 redstone_lamp[lit=true] run scoreboard players set #success {ns}.data 1

# If there are not enough players on each side
execute if score #success {ns}.data matches 0 run return 0

# Else,
execute store result score #random {ns}.data run random value 0..1
function {ns}:modes/infected/translations/secrets_ancienne_egypte_button_black
fill 128065 116 128092 128065 116 128090 air destroy
setblock 128067 114 128089 air destroy

# Go next state
function {ns}:modes/infected/secrets/ancienne_egypte/next_state
""")

	# /secrets/ancienne_egypte/button_red (translation ref rewritten)
	write_function(f"{path}/secrets/ancienne_egypte/button_red", f"""
## Red button: sacrificing yourself
# Check if both sides are lit
execute unless score #infected_secret {ns}.data matches 2 run return 0
scoreboard players set #success {ns}.data 0
execute if block 128070 112 128093 redstone_lamp[lit=true] if block 128068 112 128093 redstone_lamp[lit=false] run scoreboard players set #success {ns}.data 1

# If there are not enough players on each side
execute if score #success {ns}.data matches 0 run return 0

# Else,
execute store result score #random {ns}.data run random value 0..1
function {ns}:modes/infected/translations/secrets_ancienne_egypte_button_red
fill 128073 116 128090 128073 116 128092 air destroy
setblock 128071 114 128089 air destroy

# Go next state
function {ns}:modes/infected/secrets/ancienne_egypte/next_state
""")

	# /secrets/item_set_owner (shared by ancienne_egypte / area_51 item_tick: reset the item Owner then
	# point it at the nearest human still missing this item type)
	write_function(f"{path}/secrets/item_set_owner", f"""
# Owner become nearest human
data modify entity @s Owner set value [I;1,1,1,1]
execute if entity @s[tag={ns}.infected.stick] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:stick"}}]}}] UUID
execute if entity @s[tag={ns}.infected.redstone] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:redstone"}}]}}] UUID
""")

	# /secrets/ancienne_egypte/item_tick
	write_function(f"{path}/secrets/ancienne_egypte/item_tick", f"""
function {ns}:modes/infected/secrets/item_set_owner

# Add {ns}.checked tag
tag @s add {ns}.checked
""")

	# /secrets/ancienne_egypte/next_state (translation ref rewritten)
	write_function(f"{path}/secrets/ancienne_egypte/next_state", f"""
# Jukebox
execute if score #infected_secret {ns}.data matches 0 run playsound block.piston.contract ambient @a[tag=!detached,distance=..10]
execute if score #infected_secret {ns}.data matches 0 run setblock 128069 119 128085 air

# Redstone torch

# Sacrifice room
execute if score #infected_secret {ns}.data matches 2 positioned 128054 113 128050 run playsound block.piston.contract ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret {ns}.data matches 2 run setblock 128054 113 128050 redstone_torch
execute if score #infected_secret {ns}.data matches 2 run setblock 128057 109 128054 redstone_wall_torch[facing=west]

# End (After secret room): function executed as a player
execute if score #infected_secret {ns}.data matches 3.. unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/51
execute if score #infected_secret {ns}.data matches 3.. run function {ns}:modes/infected/secrets/check_if_all_secrets
function {ns}:modes/infected/translations/secrets_ancienne_egypte_next_state

# Next state
scoreboard players add #infected_secret {ns}.data 1
""")

	# /secrets/area_51/_load
	write_function(f"{path}/secrets/area_51/_load", f"""
function {ns}:modes/infected/secrets/area_51/giant
function {ns}:modes/infected/secrets/area_51/slime

scoreboard players set #infected_secret {ns}.data 0

""")

	# /secrets/area_51/_tick
	write_function(f"{path}/secrets/area_51/_tick", f"""
# Items to pickup
execute if score #infected_secret {ns}.data matches 0 unless entity @e[type=item,tag={ns}.infected.stick] run summon item 2060 151 2074 {{Tags:["{ns}.infected.stick","{ns}.infected.item"],Item:{{id:"minecraft:stick",count:1,components:{{"minecraft:item_name":{{"text":"Torch stick","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute if score #infected_secret {ns}.data matches 0 unless entity @e[type=item,tag={ns}.infected.redstone] run summon item 2044 146 2093 {{Tags:["{ns}.infected.redstone","{ns}.infected.item"],Item:{{id:"minecraft:redstone",count:1,components:{{"minecraft:item_name":{{"text":"Redstone","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute if score #infected_secret {ns}.data matches 0..2 unless entity @e[type=item,tag={ns}.infected.bottle] run summon item 2059 152 2081 {{Tags:["{ns}.infected.bottle","{ns}.infected.item"],Item:{{id:"minecraft:glass_bottle",count:1,components:{{"minecraft:item_name":{{"text":"Test tube","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute as @e[tag={ns}.infected.item] at @s run function {ns}:modes/infected/secrets/area_51/item_tick

## State checks
# Check generator
execute if score #infected_secret {ns}.data matches 0 positioned 2069 151 2051 unless block ~ ~ ~ air run function {ns}:modes/infected/secrets/area_51/next_state

# Check blood extraction
execute if score #infected_secret {ns}.data matches 1 positioned 2064 114 2104 if block ~ ~ ~ lever[powered=true] positioned 2064 113 2106 if block ~ ~ ~ polished_blackstone_button[powered=true] run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 2 run scoreboard players remove #blood_extraction {ns}.data 1
execute if score #infected_secret {ns}.data matches 2 if score #blood_extraction {ns}.data matches 0 run function {ns}:modes/infected/secrets/area_51/next_state

# Check blood analysis
execute if score #infected_secret {ns}.data matches 3 positioned 2033 123 2043 if data block ~ ~ ~ Items[].components."minecraft:custom_data".{ns}.element_115 if data block ~-2 ~ ~ Items[].components."minecraft:custom_data".{ns}.water_bottle if block 2028 123 2042 polished_blackstone_button[powered=true] run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 3 positioned 2033 123 2043 if data block ~ ~ ~ Items[].components."minecraft:custom_data".{ns}.water_bottle if data block ~-2 ~ ~ Items[].components."minecraft:custom_data".{ns}.element_115 if block 2028 123 2042 polished_blackstone_button[powered=true] run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 4..8 run scoreboard players remove #element_analysis {ns}.data 1
execute if score #infected_secret {ns}.data matches 4 if score #element_analysis {ns}.data matches 440 run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 5 if score #element_analysis {ns}.data matches 240 run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 6 if score #element_analysis {ns}.data matches 200 run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 7 if score #element_analysis {ns}.data matches 160 run function {ns}:modes/infected/secrets/area_51/next_state
execute if score #infected_secret {ns}.data matches 8 if score #element_analysis {ns}.data matches 0 run function {ns}:modes/infected/secrets/area_51/next_state

# Check giant zombie killed
execute if score #infected_secret {ns}.data matches 9 unless entity @e[x=2053,y=124,z=2087,tag={ns}.giant,distance=..75] run function {ns}:modes/infected/secrets/area_51/next_state

## Tick
execute if score #infected_secret {ns}.data matches 1..7 run effect give @a[tag=!detached] night_vision infinite 255 true
""")

	# /secrets/area_51/airdrop
	write_function(f"{path}/secrets/area_51/airdrop", f"""
summon chicken ~ ~-5 ~4 {{DeathLootTable:"none",Passengers:[{{id:"chest_minecart",LootTable:"{ns}:infected/airdrop",Tags:["{ns}.airdrop"]}}],active_effects:[{{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:0b}}]}}
""")

	# /secrets/area_51/giant
	write_function(f"{path}/secrets/area_51/giant", f"""
execute positioned 2053 105 2104 run function {ns}:utils/safe_kill_macro {{selector:"@e[tag={ns}.giant,distance=..100]"}}
summon zombie 2053 105 2104 {{NoAI:true,Rotation:[180.0f,0.0f],Tags:["{ns}.giant"],Invulnerable:true,Team:"{ns}.temp.zombie",attributes:[{{id:"minecraft:scale",base:6.4d}}]}}
""")

	# /secrets/area_51/item_tick
	write_function(f"{path}/secrets/area_51/item_tick", f"""
function {ns}:modes/infected/secrets/item_set_owner
execute if entity @s[tag={ns}.infected.bottle] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:glass_bottle"}}]}}] UUID

# Add {ns}.checked tag
tag @s add {ns}.checked
""")

	# /secrets/area_51/next_state (translation ref rewritten)
	write_function(f"{path}/secrets/area_51/next_state", f"""
# Generator
execute if score #infected_secret {ns}.data matches 0 run summon lightning_bolt ~ ~-10 ~
execute if score #infected_secret {ns}.data matches 0 run setblock 2069 155 2052 redstone_block

# Blood extraction
execute if score #infected_secret {ns}.data matches 1 run playsound block.beacon.power_select ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 1 run scoreboard players set #blood_extraction {ns}.data 1200
execute if score #infected_secret {ns}.data matches 2 run playsound block.brewing_stand.brew ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 2 run setblock 2064 112 2108 water_cauldron[level=3]

# Element analysis
execute if score #infected_secret {ns}.data matches 3 run playsound block.conduit.activate ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 3 run data modify block 2033 123 2043 Items set value []
execute if score #infected_secret {ns}.data matches 3 run data modify block 2031 123 2043 Items set value []
execute if score #infected_secret {ns}.data matches 3 run scoreboard players set #element_analysis {ns}.data 600
execute if score #infected_secret {ns}.data matches 4 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 5 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 6 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 7 run playsound entity.zombie.break_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret {ns}.data matches 7 run summon tnt 2020 128 2046
execute if score #infected_secret {ns}.data matches 7 run playsound {ns}:explosion ambient @a[distance=..50]
execute if score #infected_secret {ns}.data matches 7 run effect clear @a[tag=!detached] night_vision
execute if score #infected_secret {ns}.data matches 7 run effect give @a[tag=!detached] darkness 3 0 true
execute if score #infected_secret {ns}.data matches 7 run fill 2056 109 2100 2050 117 2107 air destroy
execute if score #infected_secret {ns}.data matches 7 as @a[tag=!detached] at @s run playsound block.beacon.deactivate ambient @s
execute if score #infected_secret {ns}.data matches 8 as @e[tag={ns}.giant] run data merge entity @s {{NoAI:0b,Invulnerable:0b}}
execute if score #infected_secret {ns}.data matches 8 at @e[limit=24] at @e[tag={ns}.giant] run summon zombie ~ ~ ~ {{Team:"{ns}.temp.zombie"}}

# End (killed the giant)
execute if score #infected_secret {ns}.data matches 9 unless score #test_mode {ns}.data matches 1 run advancement grant @a[team={ns}.temp.human] only {ns}:visible/53
execute if score #infected_secret {ns}.data matches 9 as @a[team={ns}.temp.human] run function {ns}:modes/infected/secrets/check_if_all_secrets
function {ns}:modes/infected/translations/secrets_area_51_next_state

# Next state
scoreboard players add #infected_secret {ns}.data 1
""")

	# /secrets/area_51/slime
	write_function(f"{path}/secrets/area_51/slime", f"""
execute positioned 2092 122 2087 run function {ns}:utils/safe_kill_macro {{selector:"@e[type=slime,distance=..500]"}}
summon slime 2092 122 2087 {{Size:5,Silent:true,Tags:["{ns}.infected.slime"]}}
""")

	# /secrets/lost_graveyard/_load
	write_function(f"{path}/secrets/lost_graveyard/_load", f"""
scoreboard players set #infected_secret {ns}.data 0
scoreboard objectives add {ns}.temp.secret_kills playerKillCount
execute in {ns}:game run gamerule minecraft:block_drops true

# Place some stardust ore
execute positioned 127121 113 127047 run function {ns}:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127122 113 127055 run function {ns}:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127115 114 127062 run function {ns}:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127118 119 127068 run function {ns}:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127109 117 127062 run function {ns}:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127131 122 127114 run function {ns}:custom_blocks/nether_stardust_ore/place_main
""")

	# /secrets/lost_graveyard/_tick
	write_function(f"{path}/secrets/lost_graveyard/_tick", f"""
# Items to pickup
execute if score #infected_secret {ns}.data matches 0..1 unless entity @e[type=item,tag={ns}.infected.shovel] run summon item 127026 118 127071 {{Tags:["{ns}.infected.shovel","{ns}.infected.item"],Item:{{id:"minecraft:stone_shovel",count:1,components:{{"minecraft:can_break":{{blocks:["gravel","sand"]}},"minecraft:damage":23,"minecraft:item_name":{{"text":"Teuse","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute if score #infected_secret {ns}.data matches 0..1 unless entity @e[type=item,tag={ns}.infected.iron_ingot] run summon item 127084 112 127016 {{Tags:["{ns}.infected.iron_ingot","{ns}.infected.item"],Item:{{id:"minecraft:iron_ingot",count:1,components:{{"minecraft:item_name":{{"text":"Lingot de fer","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute as @e[tag={ns}.infected.item] at @s run function {ns}:modes/infected/secrets/lost_graveyard/item_tick

## State checks
# Check for zombie kills
execute if score #infected_secret {ns}.data matches 0..2 positioned 127123 113 127051 as @a[tag=!detached,team={ns}.temp.human,distance=..12,scores={{{ns}.temp.secret_kills=1..}}] run function {ns}:modes/infected/secrets/lost_graveyard/next_state

# Check for tnt
execute if score #infected_secret {ns}.data matches 3 as @p[tag=!detached,team={ns}.temp.human,nbt={{Inventory:[{{id:"minecraft:tnt"}}]}}] run function {ns}:modes/infected/secrets/lost_graveyard/next_state

# Check for explosion
execute if score #infected_secret {ns}.data matches 4 positioned 127131 122 127114 if block ~ ~ ~ air run function {ns}:modes/infected/secrets/lost_graveyard/next_state

## Tick
# Creeper spawning
execute if score #infected_secret {ns}.data matches 2.. positioned 127132 113 127051 unless entity @e[type=creeper,distance=..20] run summon creeper

# Reset secret kills
scoreboard players reset @a[tag=!detached] {ns}.temp.secret_kills
""")

	# /secrets/lost_graveyard/item_tick
	write_function(f"{path}/secrets/lost_graveyard/item_tick", f"""
# Owner become nearest human
data modify entity @s Owner set value [I;1,1,1,1]
execute if entity @s[tag={ns}.infected.shovel] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:stone_shovel"}}]}}] UUID
execute if entity @s[tag={ns}.infected.iron_ingot] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:iron_ingot"}}]}}] UUID

# Add {ns}.checked tag
tag @s add {ns}.checked
""")

	# /secrets/lost_graveyard/next_state (translation ref rewritten)
	write_function(f"{path}/secrets/lost_graveyard/next_state", f"""
# First zombie kill near the hidden meteorite in the volcano
execute if score #infected_secret {ns}.data matches 0 run playsound entity.experience_orb.pickup ambient @a[tag=!detached,distance=..10] ~ ~ ~ 1 0
execute if score #infected_secret {ns}.data matches 0 run particle soul ~ ~ ~ 0.35 0.5 0.35 0.02 25

# Fifth zombie killed, open the door and summon creepers and zombies
execute if score #infected_secret {ns}.data matches 2 run fill 127123 113 127050 127124 115 127052 air destroy
execute if score #infected_secret {ns}.data matches 2 positioned 127132 113 127051 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon creeper
execute if score #infected_secret {ns}.data matches 2 positioned 127132 113 127051 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon zombie

# Crafted TNT
execute if score #infected_secret {ns}.data matches 3 run gamerule minecraft:block_drops false

# TNT exploded (end)
execute if score #infected_secret {ns}.data matches 4 unless score #test_mode {ns}.data matches 1 run advancement grant @a[team={ns}.temp.human] only {ns}:visible/52
execute if score #infected_secret {ns}.data matches 4 as @a[team={ns}.temp.human] run function {ns}:modes/infected/secrets/check_if_all_secrets
function {ns}:modes/infected/translations/secrets_lost_graveyard_next_state
execute if score #infected_secret {ns}.data matches 4 run kill @e[tag=stardust.nether_stardust_ore]
execute if score #infected_secret {ns}.data matches 4 run function {ns}:modes/infected/secrets/drop_element_115

# Next state
scoreboard players add #infected_secret {ns}.data 1
""")

	# /secrets/old_japan_apocalypse/_load
	write_function(f"{path}/secrets/old_japan_apocalypse/_load", f"""
scoreboard players set #infected_secret {ns}.data 0
execute in {ns}:game run gamerule minecraft:block_drops true

# Add an trigger objective for listening to the radio
scoreboard objectives add {ns}.temp.radio_trigger trigger
""")

	# /secrets/old_japan_apocalypse/_tick
	write_function(f"{path}/secrets/old_japan_apocalypse/_tick", f"""
# Items to pickup
execute if score #infected_secret {ns}.data matches 0..16 unless entity @e[type=item,tag={ns}.infected.pickaxe] run summon item 129014 104 129014 {{Tags:["{ns}.infected.pickaxe","{ns}.infected.item"],Item:{{id:"minecraft:diamond_pickaxe",count:1,components:{{"minecraft:can_break":{{blocks:["obsidian"]}},"minecraft:damage":23,"minecraft:item_name":{{"text":"Pioche en diamant","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute if score #infected_secret {ns}.data matches 0..16 unless entity @e[type=item,tag={ns}.infected.nether_star] run summon item 129018 138 129082 {{Tags:["{ns}.infected.nether_star","{ns}.infected.item"],Item:{{id:"minecraft:nether_star",count:1,components:{{"minecraft:item_name":{{"text":"Étoile du nether","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute if score #infected_secret {ns}.data matches 0..16 unless entity @e[type=item,tag={ns}.infected.glass] run summon item 129035 113 129095 {{Tags:["{ns}.infected.glass","{ns}.infected.item"],Item:{{id:"minecraft:glass",count:5,components:{{"minecraft:item_name":{{"text":"Carreau carré","italic":false,"color":"light_purple"}},"minecraft:lore":[{{"text":"Infected","italic":true,"color":"dark_green"}}]}}}}}}
execute as @e[tag={ns}.infected.item] at @s run function {ns}:modes/infected/secrets/old_japan_apocalypse/item_tick

## State checks
# Check for bunker opening
execute if score #infected_secret {ns}.data matches 0 positioned 129035 110 129025 if block 129016 104 129021 redstone_block run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for radio
execute if score #infected_secret {ns}.data matches 1 positioned 129027 104 129016 if block ~ ~ ~ polished_blackstone_button[powered=true] run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 2.. run scoreboard players remove #infected_radio {ns}.data 1
execute if score #infected_secret {ns}.data matches 2 if score #infected_radio {ns}.data matches 1200 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 3 if score #infected_radio {ns}.data matches 1100 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 4 if score #infected_radio {ns}.data matches 1000 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 5 if score #infected_radio {ns}.data matches 900 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 6 if score #infected_radio {ns}.data matches 800 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 7 if score #infected_radio {ns}.data matches 700 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 8 if score #infected_radio {ns}.data matches 600 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 9 if score #infected_radio {ns}.data matches 500 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 10 if score #infected_radio {ns}.data matches 400 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 11 if score #infected_radio {ns}.data matches 300 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 12 if score #infected_radio {ns}.data matches 200 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 13 if score #infected_radio {ns}.data matches 100 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret {ns}.data matches 14 if score #infected_radio {ns}.data matches 0 run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for nether star
execute if score #infected_secret {ns}.data matches 15 as @p[tag=!detached,team={ns}.temp.human,nbt={{Inventory:[{{id:"minecraft:nether_star"}}]}}] run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for placed beacon
execute if score #infected_secret {ns}.data matches 16 positioned 129018 137 129082 if block ~ ~ ~ beacon run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for end game
execute if score #infected_secret {ns}.data matches 17 if score #remaining_time {ns}.data matches 0 if entity @a[tag=!detached,team={ns}.temp.human] run function {ns}:modes/infected/secrets/old_japan_apocalypse/next_state
""")

	# /secrets/old_japan_apocalypse/item_tick
	write_function(f"{path}/secrets/old_japan_apocalypse/item_tick", f"""
# Owner become nearest human
data modify entity @s Owner set value [I;1,1,1,1]
execute if entity @s[tag={ns}.infected.pickaxe] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:diamond_pickaxe"}}]}}] UUID
execute if entity @s[tag={ns}.infected.nether_star] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:nether_star"}}]}}] UUID
execute if entity @s[tag={ns}.infected.glass] run data modify entity @s Owner set from entity @p[team={ns}.temp.human,nbt=!{{Inventory:[{{id:"minecraft:glass"}}]}}] UUID

# Add {ns}.checked tag
tag @s add {ns}.checked
""")

	# /secrets/old_japan_apocalypse/next_state (translation ref rewritten)
	write_function(f"{path}/secrets/old_japan_apocalypse/next_state", f"""
# Open the bunker door
execute if score #infected_secret {ns}.data matches 0 run playsound block.iron_door.open ambient @a[tag=!detached] ~ ~ ~ 1 1 1

# Radio dialogue
execute if score #infected_secret {ns}.data matches 1 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret {ns}.data matches 1 run scoreboard players enable @a[tag=!detached,team={ns}.temp.human] {ns}.temp.radio_trigger
execute if score #infected_secret {ns}.data matches 1 run scoreboard players set #infected_radio {ns}.data 1400
execute if score #infected_secret {ns}.data matches 5 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret {ns}.data matches 7 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret {ns}.data matches 10 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret {ns}.data matches 14 positioned 129027 104 129014 run playsound block.note_block.imitate.zombie ambient @a[tag=!detached] ~ ~ ~ 1 0.75 1

# Humans victory
execute if score #infected_secret {ns}.data matches 17 unless score #test_mode {ns}.data matches 1 run advancement grant @a[team={ns}.temp.human] only {ns}:visible/50
execute if score #infected_secret {ns}.data matches 17 as @a[team={ns}.temp.human] run function {ns}:modes/infected/secrets/check_if_all_secrets
function {ns}:modes/infected/translations/secrets_old_japan_apocalypse_next_state

# Next state
scoreboard players add #infected_secret {ns}.data 1
""")
