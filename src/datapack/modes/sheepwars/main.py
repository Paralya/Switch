
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem, ScoreCount
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "sheepwars"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /advancements/call_player_killed
	write_function(f"{path}/advancements/call_player_killed", f"""
#> {ns}:modes/sheepwars/advancements/call_player_killed
#
# @within			#sheepwars:signals/player_killed
# @executed			as a player
#
# @input victim		The player who has been damaged (executing the function tag)
# @input damager	The owner of the sheep who killed the victim (tagged with "sheepwars.owner")
#
# @description		Send a function tag signal if he is dead, and remove the damage tag
#					The function tag signal can be used to customize the death of the player (message, etc.)
#

# Suicidaire advancement
execute if score #engine_state {ns}.data matches 3 unless score #test_mode {ns}.data matches 1 if data storage {ns}:main {{current_game:"sheepwars"}} run advancement grant @s[tag=sheepwars.owner] only {ns}:visible/46
""")

	# /advancements/lightning_strike
	write_function(f"{path}/advancements/lightning_strike", f"""
advancement revoke @s only {ns}:sheepwars/lightning_strike
execute if score #engine_state {ns}.data matches 3 unless score #test_mode {ns}.data matches 1 if data storage {ns}:main {{current_game:"sheepwars"}} if entity @e[type=lightning_bolt,distance=..3] run advancement grant @s[scores={{{ns}.last_death=..2}}] only {ns}:visible/19
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
function {ns}:modes/_common/detect_2team_state

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] unless score @s sheepwars.launched_count matches 1.. run advancement grant @s only {ns}:visible/11
execute if score #game_state {ns}.data matches 2 unless score #test_mode {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] unless score @s sheepwars.launched_count matches 1.. run advancement grant @s only {ns}:visible/11

# Visuel de fin de partie
execute if score #remaining_time {ns}.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect {ns}.data matches 0 run function {ns}:utils/classic_death
""")

	# /magic_wool/place (translation ref rewritten)
	write_function(f"{path}/magic_wool/place", f"""
# Call the signal
scoreboard players set #dx sheepwars.data 6
scoreboard players set #dy sheepwars.data 20
scoreboard players set #dz sheepwars.data 25
execute if data storage {ns}:main {{map:"sheepwars_dirigeables"}} run scoreboard players set #dz sheepwars.data 6
execute if data storage {ns}:main {{map:"sheepwars_dirigeables"}} run scoreboard players set #dx sheepwars.data 25
execute if data storage {ns}:main {{map:"survival_boat"}} run scoreboard players set #dz sheepwars.data 6
execute if data storage {ns}:main {{map:"survival_boat"}} run scoreboard players set #dx sheepwars.data 25

execute if data storage {ns}:main {{map:"sheepwars_dirigeables"}} positioned 100081 150 100051 run function sheepwars:magic_wool/summon
execute if data storage {ns}:main {{map:"survival_boat"}} positioned 79062 138 79051 run function sheepwars:magic_wool/summon
execute if data storage {ns}:main {{map:"sheepwars_bonbons"}} positioned 143044 140 143056 run function sheepwars:magic_wool/summon
execute if data storage {ns}:main {{map:"sheepwars_plateforme"}} positioned 144044 140 144040 run function sheepwars:magic_wool/summon
execute if data storage {ns}:main {{map:"sheepwars_ilots"}} positioned 145046 145 145059 run function sheepwars:magic_wool/summon
execute if data storage {ns}:main {{map:"sheepwars_colored_sheeps"}} positioned 154054 147 154053 run function sheepwars:magic_wool/summon

# Message
function {ns}:modes/sheepwars/translations/magic_wool_place
""")

	# /magic_wool/slot (translation ref rewritten)
	write_function(f"{path}/magic_wool/slot", f"""
#> {ns}:modes/sheepwars/magic_wool/slot
#
# @within			#sheepwars:signals/magic_wool_shot
# @executed			as the arrow owner & at the colored wool marker
#
# @description		Depending on the team of the shooter, apply a random bonus and print a message
#

# Get random value
execute store result score #random {ns}.data run random value 0..8

# Random for blue team
execute if score #random {ns}.data matches 0 if entity @s[team={ns}.temp.blue] run effect give @a[tag=!detached,team={ns}.temp.blue] resistance 20 0 true
execute if score #random {ns}.data matches 1 if entity @s[team={ns}.temp.blue] run effect give @a[tag=!detached,team={ns}.temp.blue] regeneration 20 0 true
execute if score #random {ns}.data matches 2 if entity @s[team={ns}.temp.blue] run effect give @a[tag=!detached,team={ns}.temp.red] poison 5 3 true
execute if score #random {ns}.data matches 3 if entity @s[team={ns}.temp.blue] run effect give @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] nausea 10 0 true
execute if score #random {ns}.data matches 4 if entity @s[team={ns}.temp.blue] as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] run function sheepwars:utils/random_give
execute if score #random {ns}.data matches 5 if entity @s[team={ns}.temp.blue] run scoreboard players set #blue_fire_arrows {ns}.data 10
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.blue] run scoreboard players set #blue_explosive_arrows {ns}.data 10
execute if score #random {ns}.data matches 7 if entity @s[team={ns}.temp.blue] run effect give @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] slow_falling 20 0 true
execute if score #random {ns}.data matches 8 if entity @s[team={ns}.temp.blue] run effect give @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] glowing 10 0 true

# Random for red team
execute if score #random {ns}.data matches 0 if entity @s[team={ns}.temp.red] run effect give @a[tag=!detached,team={ns}.temp.red] resistance 20 0 true
execute if score #random {ns}.data matches 1 if entity @s[team={ns}.temp.red] run effect give @a[tag=!detached,team={ns}.temp.red] regeneration 20 0 true
execute if score #random {ns}.data matches 2 if entity @s[team={ns}.temp.red] run effect give @a[tag=!detached,team={ns}.temp.blue] poison 5 3 true
execute if score #random {ns}.data matches 3 if entity @s[team={ns}.temp.red] run effect give @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] nausea 10 0 true
execute if score #random {ns}.data matches 4 if entity @s[team={ns}.temp.red] as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] run function sheepwars:utils/random_give
execute if score #random {ns}.data matches 5 if entity @s[team={ns}.temp.red] run scoreboard players set #red_fire_arrows {ns}.data 10
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.red] run scoreboard players set #red_explosive_arrows {ns}.data 10
execute if score #random {ns}.data matches 7 if entity @s[team={ns}.temp.red] run effect give @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] slow_falling 20 0 true
execute if score #random {ns}.data matches 8 if entity @s[team={ns}.temp.red] run effect give @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] glowing 10 0 true

# Print message
function {translations}/magic_wool_slot

# Playsound
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 0.5
""")

	# /on_new_sheeps
	write_function(f"{path}/on_new_sheeps", f"""
# Tag as checked
tag @s add {ns}.checked

# If the player nearby (the one who throw the sheep) has the "Armored Sheep" kit
scoreboard players set #armored_level {ns}.data 0
execute as @p[tag=!detached] if score @s {ns}.sheepwars.chosen_kit matches 7 unless score @s {ns}.sheepwars.kit_armored_sheep matches 1.. run scoreboard players set #armored_level {ns}.data 1
execute as @p[tag=!detached] if score @s {ns}.sheepwars.chosen_kit matches 7 if score @s {ns}.sheepwars.kit_armored_sheep matches 2 run scoreboard players set #armored_level {ns}.data 2
execute as @p[tag=!detached] if score @s {ns}.sheepwars.chosen_kit matches 7 if score @s {ns}.sheepwars.kit_armored_sheep matches 3 run scoreboard players set #armored_level {ns}.data 3
execute as @p[tag=!detached] if score @s {ns}.sheepwars.chosen_kit matches 7 if score @s {ns}.sheepwars.kit_armored_sheep matches 4 run scoreboard players set #armored_level {ns}.data 4
execute as @p[tag=!detached] if score @s {ns}.sheepwars.chosen_kit matches 7 if score @s {ns}.sheepwars.kit_armored_sheep matches 5 run scoreboard players set #armored_level {ns}.data 5

# Depending on armored_level, set the sheep's health
execute if score #armored_level {ns}.data matches 1 run attribute @s max_health base set 9.6
execute if score #armored_level {ns}.data matches 2 run attribute @s max_health base set 11.2
execute if score #armored_level {ns}.data matches 3 run attribute @s max_health base set 12.8
execute if score #armored_level {ns}.data matches 4 run attribute @s max_health base set 14.4
execute if score #armored_level {ns}.data matches 5 run attribute @s max_health base set 16
data modify entity @s Health set value 16.0f
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
# Mise en spectateur
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run execute as @e[type=!player,type=!marker] run function sheepwars:sheeps/final/disappear
execute if score #process_end {ns}.data matches 1 run function {ns}:maps/regenerate_map
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /random_give
	write_function(f"{path}/random_give", f"""
# If player has More Sheep kit
scoreboard players set #number_of_drops sheepwars.data 1
execute if score @s {ns}.sheepwars.chosen_kit matches 4 store result score #random {ns}.data run random value 0..4
execute if score @s {ns}.sheepwars.chosen_kit matches 4 unless score @s {ns}.sheepwars.kit_more_sheep matches 1.. if score #random {ns}.data matches ..0 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s {ns}.sheepwars.chosen_kit matches 4 if score @s {ns}.sheepwars.kit_more_sheep matches 2 if score #random {ns}.data matches ..1 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s {ns}.sheepwars.chosen_kit matches 4 if score @s {ns}.sheepwars.kit_more_sheep matches 3 if score #random {ns}.data matches ..2 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s {ns}.sheepwars.chosen_kit matches 4 if score @s {ns}.sheepwars.kit_more_sheep matches 4 if score #random {ns}.data matches ..3 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s {ns}.sheepwars.chosen_kit matches 4 if score @s {ns}.sheepwars.kit_more_sheep matches 5 run scoreboard players set #number_of_drops sheepwars.data 2

# Give sheep + playsound
function sheepwars:utils/random_give
execute at @s run playsound entity.sheep.ambient ambient @s
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #sheepwars_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1
execute if score #blue_fire_arrows {ns}.data matches 1.. run scoreboard players remove #blue_fire_arrows {ns}.data 1
execute if score #blue_explosive_arrows {ns}.data matches 1.. run scoreboard players remove #blue_explosive_arrows {ns}.data 1
execute if score #red_fire_arrows {ns}.data matches 1.. run scoreboard players remove #red_fire_arrows {ns}.data 1
execute if score #red_explosive_arrows {ns}.data matches 1.. run scoreboard players remove #red_explosive_arrows {ns}.data 1

# Small fixes
kill @e[type=falling_block,nbt={{BlockState:{{Name:"minecraft:fire"}},OnGround:true}}]

# Every minute, decrease the delay between the give of sheeps (minimum 2 seconds between each sheep)
scoreboard players operation #minute_clock {ns}.data = #sheepwars_seconds {ns}.data
scoreboard players operation #minute_clock {ns}.data %= #60 {ns}.data
execute if score #minute_clock {ns}.data matches 30 if score #sheep_give_delay {ns}.data matches 3.. run scoreboard players remove #sheep_give_delay {ns}.data 1

# Give sheeps every X seconds (decrease every minute. If apocalypse, give a sheep every 2 seconds)
scoreboard players operation #sheep_give {ns}.data = #sheepwars_seconds {ns}.data
scoreboard players operation #sheep_give {ns}.data %= #sheep_give_delay {ns}.data
execute if score #APOCALYPSE_GAME {ns}.data matches 1 run scoreboard players operation #sheep_give {ns}.data %= #2 {ns}.data
execute if score #sheep_give {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator] run function {ns}:modes/sheepwars/random_give

# Magic wool every 30 seconds (if apocalypse, at 5 and 20 seconds out of 30 seconds)
scoreboard players operation #magic_wool {ns}.data = #sheepwars_seconds {ns}.data
scoreboard players operation #magic_wool {ns}.data %= #30 {ns}.data
execute if score #APOCALYPSE_GAME {ns}.data matches 1 if score #magic_wool {ns}.data matches 5 run scoreboard players set #magic_wool {ns}.data 20
execute if score #remaining_time {ns}.data matches 1.. if score #magic_wool {ns}.data matches 20 run function {ns}:modes/sheepwars/magic_wool/place

# Humm Charal advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,scores={{{ns}.temp.killed_sheep=10..}}] only {ns}:visible/45

# Translations
function {ns}:modes/_common/compute_mins_secs
function {ns}:translations/common/basic_actionbar
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] hunger 5 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] slowness 5 255 true
function {ns}:utils/set_dynamic_time

## Chargement de la map
function {ns}:utils/choose_map_for {{id:"sheepwars", maps:["sheepwars_dirigeables","survival_boat","sheepwars_bonbons","sheepwars_plateforme","sheepwars_ilots","sheepwars_colored_sheeps"]}}
execute in {ns}:game run gamerule minecraft:keep_inventory true
execute in {ns}:game run gamerule minecraft:block_drops false

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Default: 20 seconds delay between the give of sheeps (decrease every minute)
scoreboard players set #sheep_give_delay {ns}.data 20
scoreboard players set #remaining_time {ns}.data 910
scoreboard players set #sheepwars_seconds {ns}.data -12
scoreboard players set #sheepwars_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #blue_fire_arrows {ns}.data 0
scoreboard players set #blue_explosive_arrows {ns}.data 0
scoreboard players set #red_fire_arrows {ns}.data 0
scoreboard players set #red_explosive_arrows {ns}.data 0
scoreboard players reset * sheepwars.launched_count
scoreboard objectives add {ns}.temp.killed_sheep minecraft.killed:minecraft.sheep
scoreboard objectives setdisplay list {ns}.health

# Apocalypse
scoreboard players set #APOCALYPSE_GAME {ns}.data 0
execute if predicate {ns}:chance/0.05 run scoreboard players set #APOCALYPSE_GAME {ns}.data 1
function {ns}:modes/sheepwars/translations/start
execute if score #APOCALYPSE_GAME {ns}.data matches 1 as @a[tag=!detached] at @s run playsound entity.wither.death ambient @s

# Choix des teams + give d'items
function {ns}:modes/_common/setup_teams_red_blue
gamemode adventure @a[tag=!detached]
execute as @a[tag=!detached,sort=random] at @s run function {ns}:modes/sheepwars/team_and_give
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.red
team remove {ns}.temp.blue

scoreboard objectives remove {ns}.temp.killed_sheep
""")

	# /team_and_give (brace-heavy: plain string)
	write_function(f"{path}/team_and_give", f"""
# Team selection
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.red @s
execute if score #next_role {ns}.data matches 2 run team join {ns}.temp.blue @s
execute if score #next_role {ns}.data matches 2 run scoreboard players set #next_role {ns}.data 0

# Teleport to team spawn
execute if data storage {ns}:main {{map:"sheepwars_dirigeables"}} if entity @s[team={ns}.temp.red] run function {ns}:maps/survival/sheepwars_dirigeables/tp_red_player
execute if data storage {ns}:main {{map:"sheepwars_dirigeables"}} if entity @s[team={ns}.temp.blue] run function {ns}:maps/survival/sheepwars_dirigeables/tp_blue_player
execute if data storage {ns}:main {{map:"survival_boat"}} if entity @s[team={ns}.temp.red] run function {ns}:maps/survival/survival_boat/tp_red_player
execute if data storage {ns}:main {{map:"survival_boat"}} if entity @s[team={ns}.temp.blue] run function {ns}:maps/survival/survival_boat/tp_blue_player
execute if data storage {ns}:main {{map:"sheepwars_bonbons"}} if entity @s[team={ns}.temp.blue] run function {ns}:maps/survival/sheepwars_bonbons/tp_blue_player
execute if data storage {ns}:main {{map:"sheepwars_bonbons"}} if entity @s[team={ns}.temp.red] run function {ns}:maps/survival/sheepwars_bonbons/tp_red_player
execute if data storage {ns}:main {{map:"sheepwars_plateforme"}} if entity @s[team={ns}.temp.blue] run function {ns}:maps/survival/sheepwars_plateforme/tp_blue_player
execute if data storage {ns}:main {{map:"sheepwars_plateforme"}} if entity @s[team={ns}.temp.red] run function {ns}:maps/survival/sheepwars_plateforme/tp_red_player
execute if data storage {ns}:main {{map:"sheepwars_ilots"}} if entity @s[team={ns}.temp.blue] run function {ns}:maps/survival/sheepwars_ilots/tp_blue_player
execute if data storage {ns}:main {{map:"sheepwars_ilots"}} if entity @s[team={ns}.temp.red] run function {ns}:maps/survival/sheepwars_ilots/tp_red_player
execute if data storage {ns}:main {{map:"sheepwars_colored_sheeps"}} if entity @s[team={ns}.temp.blue] run function {ns}:maps/survival/sheepwars_colored_sheeps/tp_blue_player
execute if data storage {ns}:main {{map:"sheepwars_colored_sheeps"}} if entity @s[team={ns}.temp.red] run function {ns}:maps/survival/sheepwars_colored_sheeps/tp_red_player

""")

	# /team_and_give: the starter kit. The base sword and bow live in the kit so the player's
	# layout can move them; the chosen_kit upgrades replace them in the SAME slot (override) or
	# add the Builder's bricks and tnt. All the armour and attribute lines stay raw: never remapped.
	Kit("sheepwars", pre=f"""
# Starter kit
clear @s
execute if entity @s[team={ns}.temp.red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},dyed_color=16711680]
execute if entity @s[team={ns}.temp.red] run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=16711680]
execute if entity @s[team={ns}.temp.red] run item replace entity @s armor.feet with leather_boots[unbreakable={{}},dyed_color=16711680]
execute if entity @s[team={ns}.temp.blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},dyed_color=255]
execute if entity @s[team={ns}.temp.blue] run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=255]
execute if entity @s[team={ns}.temp.blue] run item replace entity @s armor.feet with leather_boots[unbreakable={{}},dyed_color=255]
""", items=(
		KitItem(role="melee", slot="hotbar.0", item='stone_sword[unbreakable={},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]}]'),
		KitItem(role="ranged", slot="hotbar.1", item='bow[unbreakable={},enchantments={infinity:1},can_break={blocks:"#realistic_explosion:all"},tooltip_display={"hidden_components":["minecraft:can_break"]}]'),
		KitItem(slot="inventory.0", item="arrow"),
		# Kit Better Bow (chosen_kit = 2)
		KitItem(role="ranged", override=True, cond=f"if score @s {ns}.sheepwars.chosen_kit matches 2",
			item=f'bow[unbreakable={{}},enchantments={{infinity:1}},can_break={{blocks:"#realistic_explosion:all"}},tooltip_display={{"hidden_components":["minecraft:can_break"]}},item_model="{ns}:stardust_bow"]'),
		# Kit Better Sword (chosen_kit = 3): the sword gains attack damage with each upgrade level
		KitItem(role="melee", override=True, cond=f"if score @s {ns}.sheepwars.chosen_kit matches 3 unless score @s {ns}.sheepwars.kit_sword matches 1..",
			item=f'stone_sword[unbreakable={{}},can_break={{blocks:"#realistic_explosion:all"}},tooltip_display={{"hidden_components":["minecraft:can_break"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:0.42,operation:"add_value"}}]]'),
		KitItem(role="melee", override=True, cond=f"if score @s {ns}.sheepwars.chosen_kit matches 3 if score @s {ns}.sheepwars.kit_sword matches 1",
			item=f'stone_sword[unbreakable={{}},can_break={{blocks:"#realistic_explosion:all"}},tooltip_display={{"hidden_components":["minecraft:can_break"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:0.44,operation:"add_value"}}]]'),
		KitItem(role="melee", override=True, cond=f"if score @s {ns}.sheepwars.chosen_kit matches 3 if score @s {ns}.sheepwars.kit_sword matches 2",
			item=f'stone_sword[unbreakable={{}},can_break={{blocks:"#realistic_explosion:all"}},tooltip_display={{"hidden_components":["minecraft:can_break"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:0.46,operation:"add_value"}}]]'),
		KitItem(role="melee", override=True, cond=f"if score @s {ns}.sheepwars.chosen_kit matches 3 if score @s {ns}.sheepwars.kit_sword matches 3",
			item=f'stone_sword[unbreakable={{}},can_break={{blocks:"#realistic_explosion:all"}},tooltip_display={{"hidden_components":["minecraft:can_break"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:0.48,operation:"add_value"}}]]'),
		KitItem(role="melee", override=True, cond=f"if score @s {ns}.sheepwars.chosen_kit matches 3 if score @s {ns}.sheepwars.kit_sword matches 4",
			item=f'stone_sword[unbreakable={{}},can_break={{blocks:"#realistic_explosion:all"}},tooltip_display={{"hidden_components":["minecraft:can_break"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:0.50,operation:"add_value"}}]]'),
		# Kit Builder (chosen_kit = 5)
		KitItem(role="blocks", slot="hotbar.2", item='bricks[can_break={blocks:"#realistic_explosion:all"}]',
			cond=f"if score @s {ns}.sheepwars.chosen_kit matches 5",
			count=ScoreCount(objective=f"{ns}.sheepwars.kit_builder", counts=(5, 6, 7, 9, 10), first_unless=True, last_open=False)),
		KitItem(role="explosive", slot="hotbar.3", item='tnt[can_break={blocks:"#realistic_explosion:all"}]',
			cond=f"if score @s {ns}.sheepwars.chosen_kit matches 5",
			count=ScoreCount(objective=f"{ns}.sheepwars.kit_builder", counts=(2, 2, 3, 3, 4), first_unless=True, last_open=False)),
	), post=f"""
attribute @s armor base set 3.0

## Shop things
# Kit More Health
execute if score @s {ns}.sheepwars.chosen_kit matches 1 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=16514816]
execute if score @s {ns}.sheepwars.chosen_kit matches 1 run item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},equippable={{slot:"chest",asset_id:"minecraft:chainmail"}},item_model="minecraft:chainmail_chestplate"]
execute if score @s {ns}.sheepwars.chosen_kit matches 1 if score @s {ns}.sheepwars.kit_health matches 0 run attribute @s max_health base set 21
execute if score @s {ns}.sheepwars.chosen_kit matches 1 if score @s {ns}.sheepwars.kit_health matches 1 run attribute @s max_health base set 22
execute if score @s {ns}.sheepwars.chosen_kit matches 1 if score @s {ns}.sheepwars.kit_health matches 2 run attribute @s max_health base set 23
execute if score @s {ns}.sheepwars.chosen_kit matches 1 if score @s {ns}.sheepwars.kit_health matches 3 run attribute @s max_health base set 24
execute if score @s {ns}.sheepwars.chosen_kit matches 1 if score @s {ns}.sheepwars.kit_health matches 4 run attribute @s max_health base set 25

# Kit leggings colors (Better Bow, Better Sword, Builder)
execute if score @s {ns}.sheepwars.chosen_kit matches 2 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=6225664]
execute if score @s {ns}.sheepwars.chosen_kit matches 3 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=65480]
execute if score @s {ns}.sheepwars.chosen_kit matches 5 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=16187647]

# Kit Mobility
execute if score @s {ns}.sheepwars.chosen_kit matches 6 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=16777215]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 unless score @s {ns}.sheepwars.kit_mobility matches 1.. run item replace entity @s[team={ns}.temp.red] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:1}},dyed_color=16711680,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.01,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 unless score @s {ns}.sheepwars.kit_mobility matches 1.. run item replace entity @s[team={ns}.temp.blue] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:1}},dyed_color=255,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.01,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 1 run item replace entity @s[team={ns}.temp.red] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:1}},dyed_color=16711680,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.015,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 1 run item replace entity @s[team={ns}.temp.blue] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:1}},dyed_color=255,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.015,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 2 run item replace entity @s[team={ns}.temp.red] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:2}},dyed_color=16711680,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.02,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 2 run item replace entity @s[team={ns}.temp.blue] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:2}},dyed_color=255,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.02,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 3 run item replace entity @s[team={ns}.temp.red] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:2}},dyed_color=16711680,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.025,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 3 run item replace entity @s[team={ns}.temp.blue] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:2}},dyed_color=255,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.025,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 4 run item replace entity @s[team={ns}.temp.red] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:3}},dyed_color=16711680,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.03,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 4 run item replace entity @s[team={ns}.temp.blue] armor.feet with leather_boots[unbreakable={{}},enchantments={{feather_falling:3}},dyed_color=255,attribute_modifiers=[{{type:"movement_speed",slot:"feet",id:"{ns}.movement_speed",amount:0.03,operation:"add_value"}}]]
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 1..2 run effect give @s jump_boost infinite 0 true
execute if score @s {ns}.sheepwars.chosen_kit matches 6 if score @s {ns}.sheepwars.kit_mobility matches 3.. run effect give @s jump_boost infinite 1 true

## Not an Item based kit
# Kit More Sheep (chosen_kit = 4) / Kit Armored Sheep (chosen_kit = 7)
execute if score @s {ns}.sheepwars.chosen_kit matches 4 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=7274751]
execute if score @s {ns}.sheepwars.chosen_kit matches 7 run item replace entity @s armor.legs with leather_leggings[unbreakable={{}},dyed_color=3552822]

# Set attack speed
attribute @s attack_speed base set 1024
""").write(f"{path}/team_and_give")

	# /tick (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/tick", f"""
# Timer
scoreboard players add #sheepwars_ticks {ns}.data 1

# Arrow tick
execute as @e[type=arrow] run function {ns}:modes/sheepwars/tick_arrow

# Détection des morts
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}
effect give @a[tag=!detached,predicate={ns}:in_water,nbt=!{{active_effects:[{{id:"minecraft:wither"}}]}}] wither 2 2 true

# Kill items without custom data and give saturation
kill @e[type=item,nbt=!{{Item:{{components:{{"minecraft:custom_data":{{}}}}}}}}]
execute as @a[tag=!detached,nbt=!{{foodLevel:20}}] run effect give @s saturation 1 0 true

# Kill too low entities
execute as @e[type=!player,type=!lightning_bolt,predicate={ns}:between/100_and_110] run function sheepwars:sheeps/final/disappear

# New sheeps detection
execute as @e[type=sheep,tag=!{ns}.checked] run function {ns}:modes/sheepwars/on_new_sheeps

# Night if intergalactique
scoreboard players add #sheepwars_night {ns}.data 0
execute if score #sheepwars_night {ns}.data matches 0 if entity @e[type=sheep,tag=sheepwars.intergalactique,tag=!sheepwars.intertag] run scoreboard players set #sheepwars_night {ns}.data 1
function {ns}:modes/sheepwars/translations/tick
execute if score #sheepwars_night {ns}.data matches 1 run tag @e[type=sheep,tag=sheepwars.intergalactique,tag=!sheepwars.intertag] add sheepwars.intertag
execute if score #sheepwars_night {ns}.data matches 1 as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s
execute if score #sheepwars_night {ns}.data matches 1 run time set 18000
execute if score #sheepwars_night {ns}.data matches 1 run scoreboard players set #sheepwars_night {ns}.data 2
execute if score #sheepwars_night {ns}.data matches 2 unless entity @e[type=sheep,tag=sheepwars.intergalactique] run scoreboard players set #sheepwars_night {ns}.data 3
execute if score #sheepwars_night {ns}.data matches 3 run time set 6000
execute if score #sheepwars_night {ns}.data matches 3 run scoreboard players set #sheepwars_night {ns}.data 0


## Détection de fin de partie
execute if score #sheepwars_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 1.. run function {ns}:modes/sheepwars/detect_end
execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/sheepwars/process_end
""")

	# /tick_arrow
	write_function(f"{path}/tick_arrow", f"""
# If the arrow is in a block, kill it 1 tick after
execute if entity @s[tag={ns}.to_kill] run kill @s
execute if data entity @s inBlockState run tag @s add {ns}.to_kill

# Damage depending on the upgrade
data modify entity @s damage set value 1.0d
scoreboard players set #level {ns}.data 0
execute on origin if score @s {ns}.sheepwars.chosen_kit matches 2 run scoreboard players operation #level {ns}.data = @s {ns}.sheepwars.kit_bow
execute on origin if score @s {ns}.sheepwars.chosen_kit matches 2 run scoreboard players add #level {ns}.data 1
execute if score #level {ns}.data matches 1 run data modify entity @s damage set value 1.1d
execute if score #level {ns}.data matches 2 run data modify entity @s damage set value 1.2d
execute if score #level {ns}.data matches 3 run data modify entity @s damage set value 1.3d
execute if score #level {ns}.data matches 4 run data modify entity @s damage set value 1.4d
execute if score #level {ns}.data matches 5 run data modify entity @s damage set value 1.5d

# If fire arrows are enabled, set the arrow on fire
scoreboard players set #success {ns}.data 0
execute if score #blue_fire_arrows {ns}.data matches 1.. on origin if entity @s[team={ns}.temp.blue] run scoreboard players set #success {ns}.data 1
execute if score #red_fire_arrows {ns}.data matches 1.. on origin if entity @s[team={ns}.temp.red] run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 1 run data modify entity @s Fire set value 1000s

# If explosive arrows are enabled, explode the arrow when "inGround" is true
scoreboard players set #success {ns}.data 0
execute if score #blue_explosive_arrows {ns}.data matches 1.. on origin if entity @s[team={ns}.temp.blue] run scoreboard players set #success {ns}.data 1
execute if score #red_explosive_arrows {ns}.data matches 1.. on origin if entity @s[team={ns}.temp.red] run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 1 if entity @s[nbt={{inBlockState:{{}}}}] at @s run function realistic_explosion:explode
execute if score #success {ns}.data matches 1 if entity @s[nbt={{inBlockState:{{}}}}] run kill @s
""")
