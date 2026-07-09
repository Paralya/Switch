
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "build_battle"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	# build_battle runs in switch:build_battle dimension, so calls need the dimension specifier
	write_modes_calls(mode, context=f"in {ns}:build_battle ")
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
function {ns}:utils/set_dynamic_time
gamerule minecraft:max_block_modifications 262144

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"build_battle", maps:["build_battle"]}}

scoreboard objectives add {ns}.temp.id dummy
scoreboard objectives add {ns}.temp.theme_vote trigger
scoreboard objectives add {ns}.temp.rating_vote dummy
scoreboard objectives add {ns}.temp.points dummy {{"text":"Points","color":"yellow"}}
scoreboard objectives add {ns}.temp.to_rate dummy

scoreboard players set #build_battle_state {ns}.data 0
scoreboard players set #build_battle_seconds {ns}.data -20
scoreboard players set #build_battle_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #vote_theme_1 {ns}.data 0
scoreboard players set #vote_theme_2 {ns}.data 0
scoreboard players set #vote_theme_3 {ns}.data 0
scoreboard players set #vote_theme_4 {ns}.data 0
scoreboard players set #vote_theme_5 {ns}.data 0
scoreboard players set @a[tag=!detached] {ns}.temp.id -1

execute unless score #build_battle_save_x {ns}.data matches ..-76 run scoreboard players set #build_battle_save_x {ns}.data -76
execute unless score #build_battle_save_z {ns}.data matches 0.. run scoreboard players set #build_battle_save_z {ns}.data 0

# Téléportation des joueurs dans leur cage
function {path}/preparation/main
function {translations}/start
""")

	# /stop
	write_function(f"{path}/stop", f"""
execute as @e[tag={ns}.build_battle_marker] at @s run function {path}/kill_marker

scoreboard objectives remove {ns}.temp.id
scoreboard objectives remove {ns}.temp.theme_vote
scoreboard objectives remove {ns}.temp.rating_vote
scoreboard objectives remove {ns}.temp.points
scoreboard objectives remove {ns}.temp.to_rate

schedule clear {ns}:modes/build_battle/rating_time/find_player
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #build_battle_ticks {ns}.data 1

## Global tick
# For each marker, place the correct template
execute as @e[type=marker,tag={ns}.build_battle_marker,sort=random,limit=5] at @s run function {path}/tick_marker

# While people are voting, display the themes in inventory and check their votes
execute if score #build_battle_state {ns}.data matches 0 run kill @e[type=item]
execute if score #build_battle_state {ns}.data matches 0 as @a[tag=!detached] if data entity @s Inventory[0] run function {path}/preparation/check_player_vote
execute if score #build_battle_state {ns}.data matches 0 as @a[tag=!detached] in {ns}:build_battle run function {path}/preparation/display_themes

# Check players that voted during rating time
execute if score #build_battle_state {ns}.data matches 2 as @a[tag=!detached,scores={{{ns}.right_click=1..}}] at @s run function {path}/rating_time/right_click

# Kill unexpected entities
kill @e[type=end_crystal]
kill @e[type=ender_pearl]
kill @e[type=enderman]
kill @e[type=fireball]
kill @e[type=wither]
kill @e[type=allay]
kill @e[type=vex]
kill @e[type=tnt]

## End game
execute if score #process_end {ns}.data matches 1.. run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #build_battle_seconds {ns}.data 1

# Second loop for the preparation time
execute if score #build_battle_state {ns}.data matches 0 run function {path}/preparation/second

# Second loop for the building time
execute if score #build_battle_state {ns}.data matches 1 run function {path}/building_time/second

# Second loop for the voting time
execute if score #build_battle_state {ns}.data matches 2 run function {path}/rating_time/second

# Prevent people from leaving area
execute if score #build_battle_state {ns}.data matches ..1 as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.id=0..}}] run function {path}/prevent_leaving_area
""")

	# /joined
	write_function(f"{path}/joined", f"""
## New player
# Spectator when final phase
execute if score #reconnect {ns}.data matches 0 unless score #build_battle_state {ns}.data matches 0..1 run gamemode spectator @s

# First and second phase, make the player join the game
execute if score #reconnect {ns}.data matches 0 if score #build_battle_state {ns}.data matches 0..1 run scoreboard players set @s {ns}.temp.id -1
execute if score #reconnect {ns}.data matches 0 if score #build_battle_state {ns}.data matches 0..1 summon marker run function {path}/preparation/summon_marker
execute if score #reconnect {ns}.data matches 0 if score #build_battle_state {ns}.data matches 1 run gamemode creative @s
execute if score #reconnect {ns}.data matches 0 if score #build_battle_state {ns}.data matches 0 run gamemode adventure @s
execute if score #reconnect {ns}.data matches 0 if score #build_battle_state {ns}.data matches 0 run attribute @s minecraft:gravity base set 0.0

# Final phase, make the player spectator
execute if score #reconnect {ns}.data matches 0 if score #build_battle_state {ns}.data matches 2 run gamemode spectator @s
""")

	# /prevent_leaving_area
	write_function(f"{path}/prevent_leaving_area", f"""
# Execute at the linked marker,
scoreboard players operation #player_id {ns}.temp.id = @s {ns}.temp.id
execute at @e[tag={ns}.build_battle_marker,predicate={ns}:has_same_temp_id] positioned ~1 ~ ~1 unless entity @s[dx=45,dy=36,dz=45] run function {path}/teleport_back
""")

	# /teleport_back
	write_function(f"{path}/teleport_back", f"""
function {translations}/teleport_back
spreadplayers ~24 ~24 5 10 under 128 false @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Teleport players to most points build, add "winner" to the sign, and calculate scores
execute if score #process_end {ns}.data matches 1 at @e[type=marker,tag={ns}.build_battle.best] run spreadplayers ~19 ~19 5 10 under 128 false @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 at @e[type=marker,tag={ns}.build_battle.best] run data modify block ~19 ~30 ~19 front_text.messages[0] set value {{"text":"Winner !","underlined":true}}
execute if score #process_end {ns}.data matches 1 at @e[type=marker,tag={ns}.build_battle.best] run data modify block ~19 ~30 ~19 back_text.messages[0] set value {{"text":"Winner !","underlined":true}}
execute if score #process_end {ns}.data matches 1 at @e[type=marker,tag={ns}.build_battle.best] run setblock ~19 ~29 ~19 emerald_block
execute if score #process_end {ns}.data matches 1 run function {path}/rating_time/end_calculation
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] at @s run function {path}/add_money

# Fireworks
execute if score #process_end {ns}.data matches 1 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 25 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 50 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 75 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 200 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 125 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 150 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {{LifeTime:20,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,16776960,16711935],fade_colors:[I;16711680,16776960,16711935]}}]}}}}}}}}
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /add_money
	write_function(f"{path}/add_money", f"""
scoreboard players set #add_override {ns}.money 50
function {ns}:engine/add_money
""")

	# /kill_marker
	write_function(f"{path}/kill_marker", """
# Remove build
execute positioned ~5 ~2 ~5 run fill ~ ~ ~ ~38 ~13 ~38 air
execute positioned ~5 ~2 ~5 run fill ~ ~14 ~ ~38 ~27 ~38 air
fill ~ ~-1 ~ ~ ~-2 ~ air

# Forceload remove & kill marker
forceload remove ~ ~ ~48 ~48
kill @s
""")

	# /tick_marker
	write_function(f"{path}/tick_marker", f"""
# Prevent players from breaking zone
execute if data storage {ns}:main {{map:"build_battle"}} run place template {ns}:build_battle

# Check if player changed ground (Only during building time)
execute if score #build_battle_state {ns}.data matches ..1 unless block ~3 ~7 ~3 #{ns}:build_battle_antiground unless blocks ~3 ~7 ~3 ~3 ~7 ~3 ~3 ~-2 ~3 masked run function {path}/building_time/change_ground

# Mob cap
scoreboard players set #entity_count {ns}.data 0
execute positioned ~1 ~ ~1 store result score #entity_count {ns}.data if entity @e[type=!player,type=!marker,dx=45,dy=35,dz=45]
execute if score #entity_count {ns}.data matches 24.. run kill @e[type=!player,type=!marker,dx=45,dy=35,dz=45,sort=random,limit=2]
""")

	# /xp_bar_preparation
	write_function(f"{path}/xp_bar_preparation", f"""
# 20 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points {ns}.data = #build_battle_seconds {ns}.data
scoreboard players operation #points {ns}.data *= #-1000000 {ns}.data
scoreboard players set #divide {ns}.data 20000
function {ns}:modes/_common/xp_bar/points

scoreboard players operation #levels {ns}.data = #build_battle_seconds {ns}.data
scoreboard players operation #levels {ns}.data *= #-1 {ns}.data
function {ns}:modes/_common/xp_bar/levels
""")

	# /xp_bar_rating
	write_function(f"{path}/xp_bar_rating", f"""
# 10 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points {ns}.data = #remaining_time {ns}.data
scoreboard players operation #points {ns}.data *= #-1000000 {ns}.data
scoreboard players set #divide {ns}.data 10000
function {ns}:modes/_common/xp_bar/points

scoreboard players operation #levels {ns}.data = #remaining_time {ns}.data
function {ns}:modes/_common/xp_bar/levels
""")


	# /building_time/change_ground
	write_function(f"{path}/building_time/change_ground", """
# Clone the block below to avoid this function to run again
clone ~3 ~7 ~3 ~3 ~7 ~3 ~3 ~-2 ~3 replace force
setblock ~3 ~-3 ~3 barrier

# Clone to the whole area
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~6 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~5 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~4 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~3 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~2 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~1 ~5 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~ ~ ~ ~1 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~1 ~ ~ ~2 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~3 ~ ~ ~4 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~7 ~ ~ ~8 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~15 ~ ~ ~16 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~5 ~ ~ ~32 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~ ~ ~ ~1 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~1 ~ ~ ~2 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~3 ~ ~ ~4 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~7 ~ ~ ~8 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~15 ~ ~ ~16 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~6 ~ ~ ~31 replace force
""")

	# /building_time/check_increase_time
	write_function(f"{path}/building_time/check_increase_time", f"""
## Real
# Count the number of players, and the number of players who voted yes
execute store result score #nb_players {ns}.data if entity @a[tag=!detached]
execute store result score #nb_yes {ns}.data if entity @a[tag=!detached,scores={{{ns}.temp.theme_vote=1}}]

# Check if the number of players who voted yes is greater than 75% of the number of players
scoreboard players set #success {ns}.data 0
scoreboard players operation #nb_yes {ns}.data *= #100 {ns}.data
scoreboard players operation #nb_yes {ns}.data /= #nb_players {ns}.data
execute if score #nb_yes {ns}.data matches 75.. run scoreboard players set #success {ns}.data 1
scoreboard players reset * {ns}.temp.theme_vote

# If the vote is successful, increase the time
execute if score #success {ns}.data matches 1 run scoreboard players add #remaining_time {ns}.data 120
execute if score #success {ns}.data matches 1 as @a[tag=!detached] at @s run playsound entity.villager.yes ambient @s

# Else, tell the players that the vote failed
function {translations}/building_time/check_increase_time
execute unless score #success {ns}.data matches 1 as @a[tag=!detached] at @s run playsound entity.villager.no ambient @s
""")

	# /building_time/second
	write_function(f"{path}/building_time/second", f"""
# Show timer + current theme
scoreboard players remove #remaining_time {ns}.data 1
scoreboard players operation #second {ns}.data = #remaining_time {ns}.data
scoreboard players operation #minute {ns}.data = #remaining_time {ns}.data
scoreboard players operation #second {ns}.data %= #60 {ns}.data
scoreboard players operation #minute {ns}.data /= #60 {ns}.data

# When 1m30 remains, the players can vote to increase the time for 5 minutes (if 75% of the players vote yes), voting time is 30 seconds
execute if score #remaining_time {ns}.data matches 90 run scoreboard players set @a[tag=!detached] {ns}.temp.theme_vote 0
execute if score #remaining_time {ns}.data matches 90 run scoreboard players enable @a[tag=!detached] {ns}.temp.theme_vote
execute if score #remaining_time {ns}.data matches 90 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 60 run function {path}/building_time/check_increase_time

# Remaining time warning
execute if score #remaining_time {ns}.data matches 120 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 60 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 10 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 5 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 4 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 3 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches 2 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
function {translations}/building_time/second
execute if score #remaining_time {ns}.data matches 1 as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute if score #remaining_time {ns}.data matches ..0 run function {path}/rating_time/start
""")

	# /building_time/start
	write_function(f"{path}/building_time/start", f"""
# Change game state
scoreboard players set #build_battle_state {ns}.data 1
scoreboard players set #remaining_time {ns}.data 300
execute as @a[tag=!detached] run attribute @s minecraft:gravity base reset
gamemode creative @a[tag=!detached]
clear @a[tag=!detached]

# Get most voted word
scoreboard players operation #max {ns}.data = #vote_theme_1 {ns}.data
scoreboard players operation #max {ns}.data > #vote_theme_2 {ns}.data
scoreboard players operation #max {ns}.data > #vote_theme_3 {ns}.data
scoreboard players operation #max {ns}.data > #vote_theme_4 {ns}.data
scoreboard players operation #max {ns}.data > #vote_theme_5 {ns}.data
scoreboard players set #index {ns}.data 0
execute if score #vote_theme_1 {ns}.data = #max {ns}.data run scoreboard players set #index {ns}.data 1
execute if score #vote_theme_2 {ns}.data = #max {ns}.data if score #index {ns}.data matches 0 run scoreboard players set #index {ns}.data 2
execute if score #vote_theme_3 {ns}.data = #max {ns}.data if score #index {ns}.data matches 0 run scoreboard players set #index {ns}.data 3
execute if score #vote_theme_4 {ns}.data = #max {ns}.data if score #index {ns}.data matches 0 run scoreboard players set #index {ns}.data 4
execute if score #vote_theme_5 {ns}.data = #max {ns}.data if score #index {ns}.data matches 0 run scoreboard players set #index {ns}.data 5
execute if score #vote_theme_2 {ns}.data = #max {ns}.data if score #index {ns}.data matches 1.. if predicate {ns}:chance/0.5 run scoreboard players set #index {ns}.data 2
execute if score #vote_theme_3 {ns}.data = #max {ns}.data if score #index {ns}.data matches 1.. if predicate {ns}:chance/0.5 run scoreboard players set #index {ns}.data 3
execute if score #vote_theme_4 {ns}.data = #max {ns}.data if score #index {ns}.data matches 1.. if predicate {ns}:chance/0.5 run scoreboard players set #index {ns}.data 4
execute if score #vote_theme_5 {ns}.data = #max {ns}.data if score #index {ns}.data matches 1.. if predicate {ns}:chance/0.5 run scoreboard players set #index {ns}.data 5
execute if score #index {ns}.data matches 1 run data modify storage {ns}:main current_theme set from storage {ns}:main themes.theme1
execute if score #index {ns}.data matches 2 run data modify storage {ns}:main current_theme set from storage {ns}:main themes.theme2
execute if score #index {ns}.data matches 3 run data modify storage {ns}:main current_theme set from storage {ns}:main themes.theme3
execute if score #index {ns}.data matches 4 run data modify storage {ns}:main current_theme set from storage {ns}:main themes.theme4
execute if score #index {ns}.data matches 5 run data modify storage {ns}:main current_theme set from storage {ns}:main themes.theme5

# Tellraw start + playsound
function {translations}/building_time/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
""")

	# /preparation/check_player_vote
	write_function(f"{path}/preparation/check_player_vote", f"""
# Get new vote
scoreboard players set #new_vote {ns}.data 0
execute if score #new_vote {ns}.data matches 0 unless data entity @s Inventory[{{Slot:20b}}] run scoreboard players set #new_vote {ns}.data 1
execute if score #new_vote {ns}.data matches 0 unless data entity @s Inventory[{{Slot:21b}}] run scoreboard players set #new_vote {ns}.data 2
execute if score #new_vote {ns}.data matches 0 unless data entity @s Inventory[{{Slot:22b}}] run scoreboard players set #new_vote {ns}.data 3
execute if score #new_vote {ns}.data matches 0 unless data entity @s Inventory[{{Slot:23b}}] run scoreboard players set #new_vote {ns}.data 4
execute if score #new_vote {ns}.data matches 0 unless data entity @s Inventory[{{Slot:24b}}] run scoreboard players set #new_vote {ns}.data 5

# Remove one vote from the old vote
execute if score @s {ns}.temp.theme_vote matches 1 run scoreboard players remove #vote_theme_1 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 2 run scoreboard players remove #vote_theme_2 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 3 run scoreboard players remove #vote_theme_3 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 4 run scoreboard players remove #vote_theme_4 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 5 run scoreboard players remove #vote_theme_5 {ns}.data 1

# Increase the vote
execute if score #new_vote {ns}.data matches 1.. run scoreboard players operation @s {ns}.temp.theme_vote = #new_vote {ns}.data
execute if score @s {ns}.temp.theme_vote matches 1 run scoreboard players add #vote_theme_1 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 2 run scoreboard players add #vote_theme_2 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 3 run scoreboard players add #vote_theme_3 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 4 run scoreboard players add #vote_theme_4 {ns}.data 1
execute if score @s {ns}.temp.theme_vote matches 5 run scoreboard players add #vote_theme_5 {ns}.data 1

# Clear to remove held item
clear @s
""")

	# /preparation/display_themes
	write_function(f"{path}/preparation/display_themes", f"""
## Place the papers in a shulker box with their name
setblock 0 5 0 air
setblock 0 5 0 yellow_shulker_box
item replace block 0 5 0 container.0 with paper[item_name={{"text":"","color":"yellow","italic":false}},lore=[""]]
item replace block 0 5 0 container.1 with paper[item_name={{"text":"","color":"yellow","italic":false}},lore=[""]]
item replace block 0 5 0 container.2 with paper[item_name={{"text":"","color":"yellow","italic":false}},lore=[""]]
item replace block 0 5 0 container.3 with paper[item_name={{"text":"","color":"yellow","italic":false}},lore=[""]]
item replace block 0 5 0 container.4 with paper[item_name={{"text":"","color":"yellow","italic":false}},lore=[""]]

# French
execute if score @s {ns}.lang matches 0 run data modify block 0 5 0 Items[0].components."minecraft:item_name".text set from storage {ns}:main themes.theme1.fr
execute if score @s {ns}.lang matches 0 run data modify block 0 5 0 Items[1].components."minecraft:item_name".text set from storage {ns}:main themes.theme2.fr
execute if score @s {ns}.lang matches 0 run data modify block 0 5 0 Items[2].components."minecraft:item_name".text set from storage {ns}:main themes.theme3.fr
execute if score @s {ns}.lang matches 0 run data modify block 0 5 0 Items[3].components."minecraft:item_name".text set from storage {ns}:main themes.theme4.fr
execute if score @s {ns}.lang matches 0 run data modify block 0 5 0 Items[4].components."minecraft:item_name".text set from storage {ns}:main themes.theme5.fr

# English
execute if score @s {ns}.lang matches 1 run data modify block 0 5 0 Items[0].components."minecraft:item_name".text set from storage {ns}:main themes.theme1.en
execute if score @s {ns}.lang matches 1 run data modify block 0 5 0 Items[1].components."minecraft:item_name".text set from storage {ns}:main themes.theme2.en
execute if score @s {ns}.lang matches 1 run data modify block 0 5 0 Items[2].components."minecraft:item_name".text set from storage {ns}:main themes.theme3.en
execute if score @s {ns}.lang matches 1 run data modify block 0 5 0 Items[3].components."minecraft:item_name".text set from storage {ns}:main themes.theme4.en
execute if score @s {ns}.lang matches 1 run data modify block 0 5 0 Items[4].components."minecraft:item_name".text set from storage {ns}:main themes.theme5.en


# Change the paper Count depending on their number of votes
execute if score #vote_theme_1 {ns}.data matches 1.. store result block 0 5 0 Items[0].count int 1 run scoreboard players get #vote_theme_1 {ns}.data
execute if score #vote_theme_2 {ns}.data matches 1.. store result block 0 5 0 Items[1].count int 1 run scoreboard players get #vote_theme_2 {ns}.data
execute if score #vote_theme_3 {ns}.data matches 1.. store result block 0 5 0 Items[2].count int 1 run scoreboard players get #vote_theme_3 {ns}.data
execute if score #vote_theme_4 {ns}.data matches 1.. store result block 0 5 0 Items[3].count int 1 run scoreboard players get #vote_theme_4 {ns}.data
execute if score #vote_theme_5 {ns}.data matches 1.. store result block 0 5 0 Items[4].count int 1 run scoreboard players get #vote_theme_5 {ns}.data

## Change the paper lore depending on their number of votes
# 1
data modify storage {ns}:main input set value {{Slot:0b, count:0, plurial:""}}
execute store result storage {ns}:main input.count int 1 run scoreboard players get #vote_theme_1 {ns}.data
execute if score #vote_theme_1 {ns}.data matches 2.. run data modify storage {ns}:main input.plurial set value "s"
function {path}/preparation/display_themes_macro with storage {ns}:main input
# 2
data modify storage {ns}:main input set value {{Slot:1b, count:0, plurial:""}}
execute store result storage {ns}:main input.count int 1 run scoreboard players get #vote_theme_2 {ns}.data
execute if score #vote_theme_2 {ns}.data matches 2.. run data modify storage {ns}:main input.plurial set value "s"
function {path}/preparation/display_themes_macro with storage {ns}:main input
# 3
data modify storage {ns}:main input set value {{Slot:2b, count:0, plurial:""}}
execute store result storage {ns}:main input.count int 1 run scoreboard players get #vote_theme_3 {ns}.data
execute if score #vote_theme_3 {ns}.data matches 2.. run data modify storage {ns}:main input.plurial set value "s"
function {path}/preparation/display_themes_macro with storage {ns}:main input
# 4
data modify storage {ns}:main input set value {{Slot:3b, count:0, plurial:""}}
execute store result storage {ns}:main input.count int 1 run scoreboard players get #vote_theme_4 {ns}.data
execute if score #vote_theme_4 {ns}.data matches 2.. run data modify storage {ns}:main input.plurial set value "s"
function {path}/preparation/display_themes_macro with storage {ns}:main input
# 5
data modify storage {ns}:main input set value {{Slot:4b, count:0, plurial:""}}
execute store result storage {ns}:main input.count int 1 run scoreboard players get #vote_theme_5 {ns}.data
execute if score #vote_theme_5 {ns}.data matches 2.. run data modify storage {ns}:main input.plurial set value "s"
function {path}/preparation/display_themes_macro with storage {ns}:main input


# Change the correct paper to a book
execute if score @s {ns}.temp.theme_vote matches 1 run data modify block 0 5 0 Items[0].id set value "minecraft:book"
execute if score @s {ns}.temp.theme_vote matches 2 run data modify block 0 5 0 Items[1].id set value "minecraft:book"
execute if score @s {ns}.temp.theme_vote matches 3 run data modify block 0 5 0 Items[2].id set value "minecraft:book"
execute if score @s {ns}.temp.theme_vote matches 4 run data modify block 0 5 0 Items[3].id set value "minecraft:book"
execute if score @s {ns}.temp.theme_vote matches 5 run data modify block 0 5 0 Items[4].id set value "minecraft:book"

# Place the papers in the inventory
execute if data entity @s Inventory[5] run clear @s
item replace entity @s[nbt=!{{Inventory:[{{Slot:20b}}]}}] inventory.11 from block 0 5 0 container.0
item replace entity @s[nbt=!{{Inventory:[{{Slot:21b}}]}}] inventory.12 from block 0 5 0 container.1
item replace entity @s[nbt=!{{Inventory:[{{Slot:22b}}]}}] inventory.13 from block 0 5 0 container.2
item replace entity @s[nbt=!{{Inventory:[{{Slot:23b}}]}}] inventory.14 from block 0 5 0 container.3
item replace entity @s[nbt=!{{Inventory:[{{Slot:24b}}]}}] inventory.15 from block 0 5 0 container.4

# Remove blocks
setblock 0 5 0 air
""")

	# /preparation/display_themes_macro
	write_function(f"{path}/preparation/display_themes_macro", """
$data modify block 0 5 0 Items[$(Slot)].components."minecraft:lore" set value [[{"text":"$(count)","color":"aqua","italic":false},{"text":" vote$(plurial)","color":"gray"}]]
""")

	# /preparation/forceload_and_take_player
	write_function(f"{path}/preparation/forceload_and_take_player", f"""
# Forceload
forceload add ~ ~ ~48 ~48

# Take a random player, teleport him and apply ID
tag @r[scores={{{ns}.temp.id=-1}}] add {ns}.temp
tp @p[tag={ns}.temp] ~24 ~18.69 ~24 135 0
scoreboard players operation @p[tag={ns}.temp] {ns}.temp.id = @s {ns}.temp.id

# Remove temporary tag
tag @p[tag={ns}.temp] remove {ns}.temp
""")

	# /preparation/get_random_theme
	write_function(f"{path}/preparation/get_random_theme", f"""
$data modify storage {ns}:main input set value {{theme:$(theme), index:0}}
execute store result score #modulo_rand {ns}.data run data get storage {ns}:main build_battle_themes
function {ns}:utils/get_random/main
execute store result storage {ns}:main input.index int 1 run scoreboard players get #random {ns}.data
function {path}/preparation/get_theme with storage {ns}:main input
""")

	# /preparation/get_theme
	write_function(f"{path}/preparation/get_theme", f"""
$data modify storage {ns}:main themes.theme$(theme) set from storage {ns}:main build_battle_themes[$(index)]
$data remove storage {ns}:main build_battle_themes[$(index)]
""")

	# /preparation/main
	write_function(f"{path}/preparation/main", f"""
# Summon markers from 8 100 8, progressively add 48 to z until 8 100 248, then increment x
scoreboard players set #x {ns}.data 8
scoreboard players set #z {ns}.data 8
scoreboard players set #next_id {ns}.temp.id 0
execute as @a[tag=!detached] summon marker run function {path}/preparation/summon_marker

# Remove gravity for every player
execute as @a[tag=!detached] run attribute @s minecraft:gravity base set 0.0

## Choose themes
# Get the themes list in storage {ns}:main build_battle_themes
execute unless data storage {ns}:main build_battle_themes[5] run function {path}/preparation/themes_list

# Pick 5 random themes by getting random numbers between 0 and the number of themes
data modify storage {ns}:main themes set value {{theme1:{{}}, theme2:{{}}, theme3:{{}}, theme4:{{}}, theme5:{{}}}}

data modify storage {ns}:main theme_select set value {{theme:1}}
function {path}/preparation/get_random_theme with storage {ns}:main theme_select
data modify storage {ns}:main theme_select.theme set value 2
function {path}/preparation/get_random_theme with storage {ns}:main theme_select
data modify storage {ns}:main theme_select.theme set value 3
function {path}/preparation/get_random_theme with storage {ns}:main theme_select
data modify storage {ns}:main theme_select.theme set value 4
function {path}/preparation/get_random_theme with storage {ns}:main theme_select
data modify storage {ns}:main theme_select.theme set value 5
function {path}/preparation/get_random_theme with storage {ns}:main theme_select

# Display the themes in the inventory
execute as @a[tag=!detached] in {ns}:game run function {path}/preparation/display_themes
""")

	# /preparation/second
	write_function(f"{path}/preparation/second", f"""
# XP Bar
function {path}/xp_bar_preparation

# Change every ground blocks to grass_block
execute at @e[type=marker,tag={ns}.build_battle_marker] run setblock ~3 ~-2 ~3 air
execute at @e[type=marker,tag={ns}.build_battle_marker] run setblock ~3 ~7 ~3 grass_block
execute at @e[type=marker,tag={ns}.build_battle_marker] positioned ~5 ~7 ~5 run fill ~ ~ ~ ~38 ~13 ~38 air
execute at @e[type=marker,tag={ns}.build_battle_marker] positioned ~5 ~7 ~5 run fill ~ ~14 ~ ~38 ~27 ~38 air
clear @a[tag=!detached]

# Start the building time when the voting time is over
execute if score #build_battle_seconds {ns}.data matches 0.. run function {path}/building_time/start
""")

	# /preparation/summon_marker
	write_function(f"{path}/preparation/summon_marker", f"""
# Get coordinates of marker
execute store result entity @s Pos[0] double 1 run scoreboard players get #x {ns}.data
data modify entity @s Pos[1] set value 95.0d
execute store result entity @s Pos[2] double 1 run scoreboard players get #z {ns}.data

# Get ID and add tag
scoreboard players operation @s {ns}.temp.id = #next_id {ns}.temp.id
tag @s add {ns}.build_battle_marker

# Forceload the zone, and take a player
execute at @s run function {path}/preparation/forceload_and_take_player

# Increment z and ID
scoreboard players add #z {ns}.data 48
scoreboard players add #next_id {ns}.temp.id 1

# Increment x if z >= 248
execute if score #z {ns}.data matches 248.. run scoreboard players add #x {ns}.data 48
execute if score #z {ns}.data matches 248.. run scoreboard players set #z {ns}.data 8
""")

	# /preparation/themes_list (split: f-string for translation call, plain string for theme data)
	write_function(f"{path}/preparation/themes_list", f"""
function {translations}/preparation/themes_list
data modify storage {ns}:main build_battle_themes set value []
""")
	write_function(f"{path}/preparation/themes_list", f"""
data modify storage {ns}:main build_battle_themes append value {{"fr":"Maison traditionnelle","en":"Traditional House"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"France","en":"France"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"États-Unis","en":"United States"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Japon","en":"Japan"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Chat","en":"Cat"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Chien","en":"Dog"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Tour Eiffel","en":"Eiffel Tower"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Oeil","en":"Eye"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Crabe","en":"Crab"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Incendie","en":"Fire"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Château","en":"Castle"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Apocalypse","en":"Apocalypse"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Système Solaire","en":"Solar System"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Planète Terre","en":"Planet Earth"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Piscine","en":"Swimming Pool"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Discothèque","en":"Nightclub"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Champignon","en":"Mushroom"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Vaisseau spatial","en":"Spaceship"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Avion","en":"Airplane"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Voiture","en":"Car"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Étoile","en":"Star"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"École","en":"School"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Jardin","en":"Garden"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Plage","en":"Beach"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Montagne","en":"Mountain"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Mer","en":"Sea"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Rivière","en":"River"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Volcan","en":"Volcano"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Île","en":"Island"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Nature","en":"Nature"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Tuyau","en":"Pipe"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Trésor","en":"Treasure"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Survisland","en":"Survisland"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Paralya","en":"Paralya"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Montre","en":"Watch"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Parc","en":"Park"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Garderie","en":"Nursery"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Dragon","en":"Dragon"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Mythologie","en":"Mythology"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Désert","en":"Desert"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Camera","en":"Camera"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Ordinateur","en":"Computer"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Jeu-Vidéo","en":"Video Game"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Internet","en":"Internet"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Sport","en":"Sport"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Renard","en":"Fox"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Frigo","en":"Fridge"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Librairie","en":"Library"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Tornade","en":"Tornado"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Tsunami","en":"Tsunami"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Centrale Nucléaire","en":"Nuclear Power Plant"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Virus","en":"Virus"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Physique Quantique","en":"Quantum Physics"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Aquarium","en":"Aquarium"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Total Wipeout","en":"Total Wipeout"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Death Run","en":"Death Run"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Golf","en":"Golf"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Rocket League","en":"Rocket League"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Caverne","en":"Cave"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Parcours","en":"Parkour"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"The Floor is Lava","en":"The Floor is Lava"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Murder","en":"Murder"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Salle des fêtes","en":"Party Hall"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Conseil","en":"Council"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Météorite","en":"Meteorite"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Naufrage","en":"Shipwreck"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Parachute","en":"Parachute"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Plongeon","en":"Diving"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Barbecue","en":"Barbecue"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Feu de Camp","en":"Campfire"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"14 Juillet","en":"Bastille Day"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Moulin","en":"Mill"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Astronaute","en":"Astronaut"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Déjeûner","en":"Lunch"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Hamburger","en":"Hamburger"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Jambon-Beurre","en":"Ham and Butter Sandwich"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Moto","en":"Motorcycle"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Cascade","en":"Waterfall"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Paradis","en":"Paradise"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Paradis Fiscal","en":"Tax Haven"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Pompier","en":"Firefighter"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Chimie","en":"Chemistry"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Cabane","en":"Cabin"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Super Hero","en":"Super Hero"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Pêche","en":"Fishing"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Parc d'attraction","en":"Amusement Park"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Monument","en":"Monument"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Bowling","en":"Bowling"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Musculation","en":"Bodybuilding"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Arcade","en":"Arcade"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Switch","en":"Switch"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Tesla","en":"Tesla"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Ange","en":"Angel"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Démon","en":"Demon"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Enfer","en":"Hell"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Mariage","en":"Wedding"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Poupée","en":"Doll"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Ta chambre","en":"Your Room"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Programmation","en":"Programming"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Stoupy","en":"Stoupy"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Manifestation","en":"Demonstration"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Communisme","en":"Communism"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Capitalisme","en":"Capitalism"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Démocratisme","en":"Democracy"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Explorateur de Fichiers","en":"File Explorer"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Guerre Mondiale","en":"World War"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Intelligence Artificielle","en":"Artificial Intelligence"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Grotte","en":"Cave"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"De la bonne grosse merde","en":"Some good big shit"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Inceste","en":"Incest"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Boulanger","en":"Baker"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Artisan","en":"Craftsman"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Mathématiques","en":"Mathematics"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Philosophie","en":"Philosophy"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Professeur","en":"Teacher"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Galaxie","en":"Galaxy"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Windobe","en":"Windobe"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Linux","en":"Linux"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Révolution française","en":"French Revolution"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Cinéma","en":"Cinema"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Infirmière","en":"Nurse"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Hôpital","en":"Hospital"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Chocolatine","en":"Chocolatine"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Relativité Générale","en":"General Relativity"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Globe","en":"Globe"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Licorne","en":"Unicorn"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Cafetière","en":"Coffee Maker"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Cristaline","en":"Cristaline"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Crûche / Pichet / Carafe / Broc / Pot d'eau / Pot à eau","en":"Jug / Pitcher / Carafe / Water Pot"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Trou Noir","en":"Black Hole"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Montagne Russe","en":"Roller Coaster"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Drône","en":"Drone"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Photographie","en":"Photography"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Toilettes","en":"Toilet"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Ton repas préféré","en":"Your Favorite Meal"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Meurtre","en":"Murder"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Détective","en":"Detective"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Nerd","en":"Nerd"}}
data modify storage {ns}:main build_battle_themes append value {{"fr":"Épreuve","en":"Trial"}}
""")

	# /rating_time/as_at_marker
	write_function(f"{path}/rating_time/as_at_marker", f"""
# Add a temporary tag
tag @s add {ns}.marker_temp

# Save the build in the structure {ns}:temp
schedule function {path}/rating_time/save/place_1 10t

# Forceload the save zone
execute positioned -76 100 0 summon marker run function {path}/rating_time/summon_save_zone

# Increment the next save position
scoreboard players add #build_battle_save_z {ns}.data 39
execute if score #build_battle_save_z {ns}.data matches 273.. run scoreboard players remove #build_battle_save_x {ns}.data 39
execute if score #build_battle_save_z {ns}.data matches 273.. run scoreboard players set #build_battle_save_z {ns}.data 0

# Teleport every player to the current zone
spreadplayers ~24 ~24 0 10 under 128 false @a[tag=!detached]
""")

	# /rating_time/choose_player
	write_function(f"{path}/rating_time/choose_player", f"""
# Change the player state to rating (1 = waiting, 2 = rating)
scoreboard players set @s {ns}.temp.to_rate 2

# Execute a function at the linked marker
scoreboard players operation #player_id {ns}.temp.id = @s {ns}.temp.id
execute as @e[tag={ns}.build_battle_marker,predicate={ns}:has_same_temp_id] at @s run function {path}/rating_time/as_at_marker

# Set remaining rating time and set everyone to half score
function {translations}/rating_time/choose_player
scoreboard players set #remaining_time {ns}.data 11
scoreboard players set @a[tag=!detached] {ns}.temp.rating_vote 6
""")

	# /rating_time/end_calculation
	write_function(f"{path}/rating_time/end_calculation", f"""
# Change game state & gamemode spectator
scoreboard players set #build_battle_state {ns}.data 3
gamemode spectator @a[tag=!detached]

# Get rank for each player
scoreboard objectives add {ns}.temp.rank dummy
scoreboard players set @a[scores={{{ns}.temp.id=0..}}] {ns}.temp.rank 1
scoreboard players add @a[scores={{{ns}.temp.id=0..}}] {ns}.temp.points 0
execute as @a[scores={{{ns}.temp.id=0..}}] at @a[scores={{{ns}.temp.id=0..}}] if score @s {ns}.temp.points < @p {ns}.temp.points run scoreboard players add @s {ns}.temp.rank 1

# Show 1st, 2nd, 3rd, and own rank
scoreboard objectives setdisplay sidebar {ns}.temp.points
function {translations}/rating_time/end_calculation

# Remove rank objective
execute as @a[scores={{{ns}.temp.rank=1}}] at @s run function {ns}:engine/add_win
scoreboard objectives remove {ns}.temp.rank

# Advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @a[scores={{{ns}.temp.points=50..}}] only {ns}:visible/28
""")

	# /rating_time/find_player
	write_function(f"{path}/rating_time/find_player", f"""
# Execute as a random player that has not been rated yet
execute if score #build_battle_state {ns}.data matches 2 as @r[scores={{{ns}.temp.to_rate=1}}] run function {path}/rating_time/choose_player
""")

	# /rating_time/macro_sign
	write_function(f"{path}/rating_time/macro_sign", """
$setblock ~19 ~30 ~19 cherry_sign{back_text:{color:"orange",has_glowing_text:true,messages:[{"text":""},{"text":"$(theme)"},{"text":"---------------"},{"text":"$(username)"}]},front_text:{color:"orange",has_glowing_text:true,messages:[{"text":""},{"text":"$(theme)"},{"text":"---------------"},{"text":"$(username)"}]},is_waxed:true}
""")

	# /rating_time/next_rating
	write_function(f"{path}/rating_time/next_rating", f"""
# Remove tags and reset scores to make sure we don't have any leftovers
scoreboard players reset @a[scores={{{ns}.temp.to_rate=2}}] {ns}.temp.to_rate
tag @e[tag={ns}.marker_temp] remove {ns}.marker_temp

# Find next player
function {path}/rating_time/find_player
""")

	# /rating_time/right_click
	write_function(f"{path}/rating_time/right_click", f"""
# Get slot
scoreboard players set #slot {ns}.data 0
execute store result score #slot {ns}.data run data get entity @s SelectedItemSlot

# Depending on slot, print message and playsound cat
function {translations}/rating_time/right_click
execute if score #slot {ns}.data matches 0 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 0.33
execute if score #slot {ns}.data matches 1 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 0.66
execute if score #slot {ns}.data matches 2 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 1.00
execute if score #slot {ns}.data matches 3 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 1.33
execute if score #slot {ns}.data matches 4 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 1.66
execute if score #slot {ns}.data matches 5 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 2.00

# Change vote
execute if score #slot {ns}.data matches 0 run scoreboard players set @s {ns}.temp.rating_vote 1
execute if score #slot {ns}.data matches 1 run scoreboard players set @s {ns}.temp.rating_vote 2
execute if score #slot {ns}.data matches 2 run scoreboard players set @s {ns}.temp.rating_vote 4
execute if score #slot {ns}.data matches 3 run scoreboard players set @s {ns}.temp.rating_vote 6
execute if score #slot {ns}.data matches 4 run scoreboard players set @s {ns}.temp.rating_vote 8
execute if score #slot {ns}.data matches 5 run scoreboard players set @s {ns}.temp.rating_vote 12
""")

	# /rating_time/save_build
	write_function(f"{path}/rating_time/save_build", f"""
# Save the temporary build at this position
place template {ns}:temp

# Add a sign with the player's name
setblock 0 5 0 yellow_shulker_box destroy
execute as @p[scores={{{ns}.temp.to_rate=2}}] run loot insert 0 5 0 loot {ns}:get_username
setblock ~19 ~29 ~19 barrier
data modify storage {ns}:main input set value {{theme:"",username:""}}
data modify storage {ns}:main input.theme set from storage {ns}:main current_theme.en
data modify storage {ns}:main input.username set from block 0 5 0 Items[0].components."minecraft:profile".name
function {path}/rating_time/macro_sign with storage {ns}:main input
setblock 0 5 0 air

# Check if the current player is the best so far
scoreboard players set #max {ns}.data 0
scoreboard players operation #max {ns}.data > @a[tag=!detached] {ns}.temp.points
scoreboard players set #best {ns}.data 0
execute as @p[scores={{{ns}.temp.to_rate=2}}] if score #max {ns}.data = @s {ns}.temp.points run scoreboard players set #best {ns}.data 1

# If player is not the best, remove the marker
execute if score #best {ns}.data matches 0 run forceload remove ~-16 ~-16 ~48 ~48
execute if score #best {ns}.data matches 0 run kill @s

# Else, change marker tags
execute if score #best {ns}.data matches 1 run kill @e[type=marker,tag={ns}.build_battle.best]
execute if score #best {ns}.data matches 1 run data modify entity @s Tags set value ["{ns}.build_battle.best"]
""")

	# /rating_time/second
	write_function(f"{path}/rating_time/second", f"""
# Show Current theme
function {translations}/rating_time/second

# Avoid build changes during rating time
execute at @e[tag={ns}.marker_temp,limit=1] run place template {ns}:temp ~5 ~ ~5

## Rating
# Equipment
execute as @a[tag=!detached] if data entity @s Inventory[7] run function {path}/rating_time/set_inventory
execute as @a[tag=!detached] unless data entity @s Inventory[6] run function {path}/rating_time/set_inventory

## Timer
# Decrease remaining time
scoreboard players remove #remaining_time {ns}.data 1

# XP Bar
function {path}/xp_bar_rating

# If the timer is equal to 0,
execute if score #remaining_time {ns}.data matches 0 run function {path}/rating_time/time_up
""")

	# /rating_time/set_inventory
	write_function(f"{path}/rating_time/set_inventory", """
clear @s
item replace entity @s weapon.offhand with warped_fungus_on_a_stick[unbreakable={},item_model="minecraft:air",attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.0 with brown_concrete[item_name={"text":"Super Poop","color":"#8B4513"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.1 with red_concrete[item_name={"text":"Poop","color":"red"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.2 with green_concrete[item_name={"text":"OK","color":"dark_green"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.3 with lime_concrete[item_name={"text":"Good","color":"green"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.4 with magenta_concrete[item_name={"text":"Epic","color":"light_purple"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.5 with yellow_concrete[item_name={"text":"Legendary","color":"gold"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
""")

	# /rating_time/start
	write_function(f"{path}/rating_time/start", f"""
# Change game state
scoreboard players set #build_battle_state {ns}.data 2
schedule function {path}/rating_time/find_player 1t replace
execute as @a[tag=!detached] at @s run playsound block.anvil.destroy ambient @s
clear @a[tag=!detached]

# Tag every players to be able to rate their build
scoreboard players set @a[scores={{{ns}.temp.id=0..}}] {ns}.temp.to_rate 1

# Tellraw start + playsound
function {translations}/rating_time/start
""")

	# /rating_time/summon_save_zone
	write_function(f"{path}/rating_time/summon_save_zone", f"""
tag @s add {ns}.build_battle_save
execute store result entity @s Pos[0] double 1 run scoreboard players get #build_battle_save_x {ns}.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #build_battle_save_z {ns}.data
execute at @s run forceload add ~-16 ~-16 ~48 ~48
""")

	# /rating_time/time_up
	write_function(f"{path}/rating_time/time_up", f"""
# Give points to player
scoreboard players set @p[scores={{{ns}.temp.to_rate=2}}] {ns}.temp.points 0
scoreboard players operation @p[scores={{{ns}.temp.to_rate=2}}] {ns}.temp.points += @a[tag=!detached,gamemode=!spectator] {ns}.temp.rating_vote
scoreboard players operation @p[scores={{{ns}.temp.to_rate=2}}] {ns}.temp.points -= @p[scores={{{ns}.temp.to_rate=2}}] {ns}.temp.rating_vote
execute unless score #test_mode {ns}.data matches 1 as @p[scores={{{ns}.temp.to_rate=2}}] at @s if entity @a[tag=!detached,distance=0.001..,scores={{{ns}.temp.rating_vote=12}}] run advancement grant @s only {ns}:visible/49

# Save the build
execute as @e[type=marker,tag={ns}.build_battle_save,limit=1] at @s run function {path}/rating_time/save_build

# If there are remaining players, start the rating
scoreboard players set @p[scores={{{ns}.temp.to_rate=2}}] {ns}.temp.to_rate 3
execute if entity @a[scores={{{ns}.temp.to_rate=1}}] run function {path}/rating_time/next_rating

# Else, end the game
execute if score #remaining_time {ns}.data matches 0 run function {path}/process_end
""")

	# /rating_time/save/place_1
	write_function(f"{path}/rating_time/save/place_1", f"""
execute at @e[tag={ns}.marker_temp,tag={ns}.build_battle_marker] run setblock ~ ~-2 ~ structure_block{{mode:"SAVE",name:"{ns}:temp",posX:5,posY:2,posZ:5,sizeX:38,sizeY:35,sizeZ:38,showboundingbox:0b,ignoreEntities:true}}

schedule function {path}/rating_time/save/place_2 1t
""")

	# /rating_time/save/place_2
	write_function(f"{path}/rating_time/save/place_2", f"""
execute at @e[tag={ns}.marker_temp,tag={ns}.build_battle_marker] run setblock ~ ~-1 ~ redstone_block

schedule function {path}/rating_time/save/remove 1s
""")

	# /rating_time/save/remove
	write_function(f"{path}/rating_time/save/remove", f"""
execute at @e[tag={ns}.marker_temp,tag={ns}.build_battle_marker] run fill ~ ~-2 ~ ~ ~-1 ~ air
""")
