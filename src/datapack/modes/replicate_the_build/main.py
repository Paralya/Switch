
# ruff: noqa: E501, W291
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "replicate_the_build"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
function {ns}:utils/classic_death
tp @s 102000 100 102000
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, la personne passe en spectateur
gamemode spectator @s
scoreboard players set @s {ns}.alive 0
tp @s 102000 100 102000
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1
scoreboard players set #rtb_round_state {ns}.data 9

execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..}}] at @s run function {ns}:engine/add_win
function {ns}:translations/common/process_end_survivors
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {ns}:modes/replicate_the_build/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /round/0 (translation ref rewritten)
	write_function(f"{path}/round/0", f"""
function {ns}:modes/replicate_the_build/translations/round_0
function {ns}:modes/replicate_the_build/round/_common
""")

	# /round/1 (translation ref rewritten)
	write_function(f"{path}/round/1", f"""
function {ns}:modes/replicate_the_build/translations/round_1
function {ns}:modes/replicate_the_build/round/_common
""")

	# /round/2 (translation ref rewritten)
	write_function(f"{path}/round/2", f"""
function {ns}:modes/replicate_the_build/translations/round_2
function {ns}:modes/replicate_the_build/round/_common
""")

	# /round/3 (translation ref rewritten)
	write_function(f"{path}/round/3", f"""
kill @e[type=item]
kill @e[type=arrow]
kill @e[tag={ns}.rtb.verify,type=marker]

function {ns}:modes/replicate_the_build/translations/round_3
scoreboard players add #rtb_round_state {ns}.data 1

scoreboard objectives remove {ns}.rtb.id
scoreboard objectives add {ns}.rtb.id dummy

kill @e[type=marker,tag={ns}.rtb.island]
kill @e[type=marker,tag={ns}.rtb.center]

summon marker 102000 98 101996 {{Tags:["{ns}.rtb.center"]}}

# 102000 98 101982, 101986 98 101982, 101986 98 101996, 101986 98 102010, 102000 98 102010, 102014 98 102010, 102014 98 101996,102014 98 101982
summon marker 102000 98 101982 {{Tags:["{ns}.rtb.island"]}}
summon marker 101986 98 101982 {{Tags:["{ns}.rtb.island"]}}
summon marker 101986 98 101996 {{Tags:["{ns}.rtb.island"]}}
summon marker 101986 98 102010 {{Tags:["{ns}.rtb.island"]}}
summon marker 102000 98 102010 {{Tags:["{ns}.rtb.island"]}}
summon marker 102014 98 102010 {{Tags:["{ns}.rtb.island"]}}
summon marker 102014 98 101996 {{Tags:["{ns}.rtb.island"]}}
summon marker 102014 98 101982 {{Tags:["{ns}.rtb.island"]}}

scoreboard players set #rtbteam {ns}.data 0
execute as @e[tag={ns}.rtb.island,type=marker,sort=random] run function {ns}:modes/replicate_the_build/start/random_island

scoreboard players set #rtbteam {ns}.data 0
execute as @a[scores={{{ns}.alive=1..}},sort=random] run function {ns}:modes/replicate_the_build/start/select_teams

gamemode adventure @a[scores={{{ns}.alive=1..}}]
clear @a[tag=!detached]
kill @e[type=item]


# Tirage au sort de la structure
execute store result score #random {ns}.data run random value 0..10

execute as @e[type=marker,tag={ns}.rtb.island] at @s positioned ~-3 ~ ~1 run function {ns}:modes/replicate_the_build/structure/place

bossbar set rtb.all name "Mémorisez !"
bossbar set rtb.all color green
scoreboard players set #rtb_memorize_time {ns}.data 140
execute store result bossbar rtb.all max run scoreboard players get #rtb_memorize_time {ns}.data
execute store result bossbar rtb.all value run scoreboard players get #rtb_memorize_time {ns}.data

execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1.5
""")

	# /round/4
	write_function(f"{path}/round/4", f"""
scoreboard players remove #rtb_memorize_time {ns}.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_memorize_time {ns}.data

execute if score #rtb_memorize_time {ns}.data matches ..0 run function {ns}:modes/replicate_the_build/round/4_end
""")

	# /round/4_end
	write_function(f"{path}/round/4_end", f"""
scoreboard players add #rtb_round_state {ns}.data 1
scoreboard players set @a[tag=!detached] {ns}.rtb.time 0
execute as @e[type=marker,tag={ns}.rtb.island] run function {ns}:modes/replicate_the_build/structure/destroy

bossbar set rtb.all name "Répliquez"
bossbar set rtb.all color red
scoreboard players set #rtb_build_time {ns}.data 600
execute store result bossbar rtb.all max run scoreboard players get #rtb_build_time {ns}.data
execute store result bossbar rtb.all value run scoreboard players get #rtb_build_time {ns}.data

execute positioned -29999997 24 1603 run fill ~ ~ ~ ~6 ~6 ~6 air
execute positioned -29999997 24 1603 run fill ~ ~-1 ~ ~6 ~-1 ~6 stone
execute positioned -29999997 24 1603 run function {ns}:modes/replicate_the_build/structure/place

gamemode survival @a[scores={{{ns}.alive=1..}}]
clear @a[tag=!detached]
kill @e[type=item]
execute in {ns}:game run gamerule minecraft:block_drops true
execute positioned -29999997 24 1603 run function {ns}:modes/replicate_the_build/structure/give_player
""")

	# /round/5
	write_function(f"{path}/round/5", f"""
# Reduce time
scoreboard players remove #rtb_build_time {ns}.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_build_time {ns}.data

# execute if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all
execute as @e[type=marker,tag={ns}.rtb.island] at @s if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all run function {ns}:modes/replicate_the_build/utils/finish_building
scoreboard players add @a[scores={{{ns}.alive=1..}},gamemode=survival] {ns}.rtb.time 1
execute if score #rtb_build_time {ns}.data matches ..0 run function {ns}:modes/replicate_the_build/round/5_end
execute if score #rtb_round_state {ns}.data matches 5 unless entity @a[tag=!detached,gamemode=!spectator,scores={{{ns}.alive=1..}}] run function {ns}:modes/replicate_the_build/round/5_end
""")

	# /round/5_end
	write_function(f"{path}/round/5_end", f"""
scoreboard players add #rtb_round_state {ns}.data 1
gamemode spectator @a[scores={{{ns}.alive=1..}},gamemode=!spectator]
execute as @e[type=marker,tag={ns}.rtb.center] at @s positioned ~-3 ~ ~1 run function {ns}:modes/replicate_the_build/structure/place

# Calcul du pourcentage de répliquation
kill @e[tag={ns}.rtb.verify,type=marker]
execute as @e[type=marker,tag={ns}.rtb.center] at @s run summon marker ~-3 ~ ~1 {{Tags:["{ns}.rtb.verify","{ns}.rtb.verify_center"]}}
execute as @e[type=marker,tag={ns}.rtb.island] at @s positioned ~-3 ~ ~1 run function {ns}:modes/replicate_the_build/utils/summon_verify

scoreboard players set #rtb_dx {ns}.data 0
scoreboard players set #rtb_dy {ns}.data 0
scoreboard players set #rtb_dz {ns}.data 0
scoreboard players set @a[scores={{{ns}.alive=1..}}] {ns}.rtb.points 0

bossbar set rtb.all name "Calcul des scores ..."
bossbar set rtb.all max 343
bossbar set rtb.all value 0
bossbar set rtb.all color green
scoreboard players set #rtb_calcul_time {ns}.data 343
""")

	# /round/6 (NOTE: line with trailing space preserved)
	write_function(f"{path}/round/6", f"""
execute as @e[tag={ns}.rtb.verify] at @s run particle happy_villager ~ ~ ~ .1 .1 .1 0 1 normal
scoreboard players remove #rtb_calcul_time {ns}.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_calcul_time {ns}.data

# The original block is at -29999997 23 1603
execute as @e[tag={ns}.rtb.verify_center] at @s run clone ~ ~ ~ ~ ~ ~ -29999997 23 1603

# All island blocks are at -29999997 22 1603
execute as @e[tag={ns}.rtb.verify_island] at @s run function {ns}:modes/replicate_the_build/utils/verify_a_block

# Now tp to the next block in the row
scoreboard players add #rtb_dx {ns}.data 1
execute as @e[tag={ns}.rtb.verify] at @s run tp @s ~1 ~ ~

# Reset the x score and increment the z score
execute if score #rtb_dx {ns}.data matches 7.. run scoreboard players add #rtb_dz {ns}.data 1 
execute if score #rtb_dx {ns}.data matches 7.. as @e[tag={ns}.rtb.verify] at @s run tp @s ~-7 ~ ~1
execute if score #rtb_dx {ns}.data matches 7.. run scoreboard players set #rtb_dx {ns}.data 0

execute if score #rtb_dz {ns}.data matches 7.. run scoreboard players add #rtb_dy {ns}.data 1
execute if score #rtb_dz {ns}.data matches 7.. as @e[tag={ns}.rtb.verify] at @s run tp @s ~ ~1 ~-7
execute if score #rtb_dz {ns}.data matches 7.. run scoreboard players set #rtb_dz {ns}.data 0

execute if score #rtb_dy {ns}.data matches 7.. run function {ns}:modes/replicate_the_build/round/6_end
""")

	# /round/6_end
	write_function(f"{path}/round/6_end", f"""
scoreboard players add #rtb_round_state {ns}.data 1

bossbar set rtb.all name "Calcul des scores ..."
bossbar set rtb.all max 343
bossbar set rtb.all value 343
bossbar set rtb.all color green

scoreboard players set #rtb_wait_explosion {ns}.data 100
""")

	# /round/7
	write_function(f"{path}/round/7", f"""
execute as @a[tag=!detached] run function {ns}:modes/replicate_the_build/utils/display_score

scoreboard players remove #rtb_wait_score {ns}.data 1
execute if score #rtb_wait_score {ns}.data matches ..0 run function {ns}:modes/replicate_the_build/round/7_end
""")

	# /round/7_end (translation ref rewritten)
	write_function(f"{path}/round/7_end", f"""
scoreboard players add #rtb_round_state {ns}.data 1

scoreboard players set #min_score {ns}.data 343
scoreboard players operation #min_score {ns}.data < @a[tag=!detached] {ns}.rtb.points

execute as @a[scores={{{ns}.alive=1..}}] if score @s {ns}.rtb.points = #min_score {ns}.data run tag @s add {ns}.looser_score

scoreboard players set #max_time {ns}.data 0
scoreboard players operation #max_time {ns}.data > @a[tag=!detached] {ns}.rtb.time

execute as @a[scores={{{ns}.alive=1..}}] if score @s {ns}.rtb.time = #max_time {ns}.data run tag @s add {ns}.looser_time

tag @r[scores={{{ns}.alive=1..}},tag={ns}.looser_score,tag={ns}.looser_time,limit=1] add {ns}.looser

function {ns}:modes/replicate_the_build/translations/round_7_end

execute in {ns}:game run gamerule minecraft:block_drops false

execute as @p[tag={ns}.looser] run function {ns}:modes/replicate_the_build/utils/explose_island

tag @a remove {ns}.looser_score
tag @a remove {ns}.looser_time
tag @a[tag=!detached,tag={ns}.looser] remove {ns}.alive
tag @a remove {ns}.looser

kill @e[tag={ns}.rtb.verify]

scoreboard players set #rtb_wait_explosion {ns}.data 40
""")

	# /round/8
	write_function(f"{path}/round/8", f"""
scoreboard players remove #rtb_wait_explosion {ns}.data 1
execute if score #rtb_wait_explosion {ns}.data matches ..0 run function {ns}:modes/replicate_the_build/round/8_end
kill @e[type=item]
kill @e[type=arrow]
kill @e[tag={ns}.rtb.verify,type=marker]
""")

	# /round/8_end
	write_function(f"{path}/round/8_end", f"""
execute store result score #nb_alive {ns}.data if entity @a[scores={{{ns}.alive=1..}}]
execute if score #nb_alive {ns}.data matches 2.. run scoreboard players set #rtb_round_state {ns}.data 0
execute if score #nb_alive {ns}.data matches ..1 run scoreboard players set #rtb_round_state {ns}.data 9

execute as @e[type=marker,tag={ns}.rtb.island] run function {ns}:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag={ns}.rtb.center] run function {ns}:modes/replicate_the_build/structure/destroy
execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 0.5

kill @e[type=item]
kill @e[type=arrow]
kill @e[tag={ns}.rtb.verify,type=marker]
""")

	# /round/_common
	write_function(f"{path}/round/_common", f"""
scoreboard players add #rtb_round_state {ns}.data 1
execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1

kill @e[type=item]
kill @e[type=arrow]
kill @e[tag={ns}.rtb.verify,type=marker]
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #replicate_the_build_seconds {ns}.data 1

execute if score #rtb_round_state {ns}.data matches 3 run function {ns}:modes/replicate_the_build/round/3
execute if score #rtb_round_state {ns}.data matches 2 run function {ns}:modes/replicate_the_build/round/2
execute if score #rtb_round_state {ns}.data matches 1 run function {ns}:modes/replicate_the_build/round/1
execute if score #rtb_round_state {ns}.data matches 0 run function {ns}:modes/replicate_the_build/round/0
""")

	# /start (translation ref rewritten; NOTE: trailing space on "bossbar remove rtb.all ")
	write_function(f"{path}/start", f"""
gamemode spectator @a[tag=!detached]
scoreboard players set @a[tag=!detached] {ns}.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 2 true
function {ns}:utils/set_dynamic_time

execute in {ns}:game run gamerule minecraft:block_drops false

## Téléportation des joueurs
tp @a[tag=!detached] 102000 100 102000
#define bossbar rtb.all
function {ns}:modes/replicate_the_build/translations/start

scoreboard players set #replicate_the_build_seconds {ns}.data -5
scoreboard players set #replicate_the_build_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard objectives add {ns}.rtb.time dummy
scoreboard objectives add {ns}.rtb.points dummy

bossbar remove rtb.all 
bossbar add rtb.all "Début du prochain round..."
bossbar set rtb.all players @a[tag=!detached]

# Initialisation des scores du round
scoreboard players set #rtb_round {ns}.data 1
scoreboard players set #rtb_round_state {ns}.data 0
scoreboard players set #rtb_round_timer {ns}.data 0
""")

	# /start/random_island
	write_function(f"{path}/start/random_island", f"""
scoreboard players add #rtbteam {ns}.data 1
scoreboard players operation @s {ns}.rtb.id = #rtbteam {ns}.data
""")

	# /start/select_teams
	write_function(f"{path}/start/select_teams", f"""
scoreboard players add #rtbteam {ns}.data 1
scoreboard players operation @s {ns}.rtb.id = #rtbteam {ns}.data
function {ns}:modes/replicate_the_build/utils/tp_to_island
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.rtb.id
scoreboard objectives remove {ns}.rtb.time
scoreboard objectives remove {ns}.rtb.points

execute as @e[type=marker,tag={ns}.rtb.island] run function {ns}:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag={ns}.rtb.center] run function {ns}:modes/replicate_the_build/structure/destroy
bossbar remove rtb.all
""")

	# /structure/destroy
	write_function(f"{path}/structure/destroy", """
execute at @s positioned ~ ~ ~4 run fill ~-5 ~-3 ~-5 ~5 ~10 ~5 moving_piston replace air
execute at @s run fill ~-3 ~ ~1 ~3 ~7 ~7 air replace moving_piston
execute at @s run fill ~-3 ~ ~1 ~3 ~7 ~7 air destroy
""")

	# /structure/give_player (programmatic 7x7x7 grid)
	give_lines: list[str] = [
		f"give @a[scores={{{ns}.alive=1..}}] diamond_pickaxe[unbreakable={{}},enchantments={{silk_touch:1}}]",
		f"give @a[scores={{{ns}.alive=1..}}] diamond_hoe[unbreakable={{}},enchantments={{silk_touch:1}}]",
		f"give @a[scores={{{ns}.alive=1..}}] diamond_axe[unbreakable={{}},enchantments={{silk_touch:1}}]",
		f"give @a[scores={{{ns}.alive=1..}}] diamond_shovel[unbreakable={{}},enchantments={{silk_touch:1}}]\n",
	]
	for dx in range(7):
		for dy in range(7):
			for dz in range(7):
				give_lines.append(
					f"execute as @a[scores={{{ns}.alive=1..}}] run loot give @s mine ~{dx} ~{dy} ~{dz} diamond_pickaxe[enchantments={{silk_touch:1}}]"
				)
	write_function(f"{path}/structure/give_player", "\n".join(give_lines) + "\n")

	# /structure/place
	write_function(f"{path}/structure/place", f"""
execute if score #random {ns}.data matches 0 run place template {ns}:replicate_the_build/full_blue
execute if score #random {ns}.data matches 1 run place template {ns}:replicate_the_build/beacon
execute if score #random {ns}.data matches 2 run place template {ns}:replicate_the_build/beacon2
execute if score #random {ns}.data matches 3 run place template {ns}:replicate_the_build/chess
execute if score #random {ns}.data matches 4 run place template {ns}:replicate_the_build/dragon
execute if score #random {ns}.data matches 5 run place template {ns}:replicate_the_build/enchanting
execute if score #random {ns}.data matches 6 run place template {ns}:replicate_the_build/farm
execute if score #random {ns}.data matches 7 run place template {ns}:replicate_the_build/france
execute if score #random {ns}.data matches 8 run place template {ns}:replicate_the_build/lampadaire
execute if score #random {ns}.data matches 9 run place template {ns}:replicate_the_build/nether
execute if score #random {ns}.data matches 10 run place template {ns}:replicate_the_build/rush
""")

	# /structure/readme.md
	write_function(f"{path}/structure/readme.md", f"""
# Comment ajouter une structure ?
## Etape 1 : La structure
# Commence par build ou voler ta structure. Attention elle doit faire 7x7x7 blocs maximum.
# Sauvegarde là grâce à un structure block.

## Etape 2 : Le fichier
# Copie le fichier dans : ``datapacks/{ns}/data/{ns}/structures/replicate_the_build/``

## Etape 3 : Ajoute la structure au jeu
# Va dans le fichier ``datapacks/{ns}/data/{ns}/function/modes/replicate_the_build/structure/place.mcfunction``
# Ajoute une ligne avec le nom de la structure et en incrémentant le ``if score #random {ns}.data matches X`` de 1.
# Incrémente aussi dans ``datapacks/{ns}/data/{ns}/function/modes/replicate_the_build/round/3.mcfunction`` le ``scoreboard players set #modulo_rand {ns}.data X`` de 1.

## Etape 4 : Ajoute des items composants la structure et indique le temps voulu
# Va dans le fichier ``datapacks/{ns}/data/{ns}/function/modes/replicate_the_build/structure/give.mcfunction``
# Ajoute une ligne et modifie de même avec le même ID que précédemment. Tu dois donner tout les items composants la structure au joueur @s. Choisis aussi le temps imparti pour la construction de la structure (400 = 20 secondes par exemple).
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #replicate_the_build_ticks {ns}.data 1

execute if score #rtb_round_state {ns}.data matches 9 run function {ns}:modes/replicate_the_build/process_end
execute if score #rtb_round_state {ns}.data matches 8 run function {ns}:modes/replicate_the_build/round/8
execute if score #rtb_round_state {ns}.data matches 7 run function {ns}:modes/replicate_the_build/round/7

execute if score #rtb_round_state {ns}.data matches 6 run function {ns}:modes/replicate_the_build/round/6
execute if score #rtb_round_state {ns}.data matches 6 run function {ns}:modes/replicate_the_build/round/6
execute if score #rtb_round_state {ns}.data matches 6 run function {ns}:modes/replicate_the_build/round/6

execute if score #rtb_round_state {ns}.data matches 5 run function {ns}:modes/replicate_the_build/round/5
execute if score #rtb_round_state {ns}.data matches 4 run function {ns}:modes/replicate_the_build/round/4

function {ns}:utils/on_death_run_function {{function:"{ns}:modes/replicate_the_build/death"}}

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[scores={{{ns}.alive=1..}}] unless score #rtb_round_state {ns}.data matches 9 run function {ns}:modes/replicate_the_build/process_end
execute if score #replicate_the_build_seconds {ns}.data matches 600.. run function {ns}:modes/replicate_the_build/process_end
""")

	# /utils/display_score (translation ref rewritten)
	write_function(f"{path}/utils/display_score", f"""
tag @s add {ns}.temp
function {ns}:modes/replicate_the_build/translations/utils_display_score
tag @s remove {ns}.temp
""")

	# /utils/explose_island
	write_function(f"{path}/utils/explose_island", f"""
scoreboard players operation #rtb_search {ns}.data = @s {ns}.rtb.id
tag @s add {ns}.rtb.temp
execute as @e[type=marker,tag={ns}.rtb.island] if score @s {ns}.rtb.id = #rtb_search {ns}.data at @s positioned ~ ~ ~3 run summon creeper ~ ~ ~ {{Fuse:0,ignited:true}}
execute as @e[type=marker,tag={ns}.rtb.island] if score @s {ns}.rtb.id = #rtb_search {ns}.data at @s run function {ns}:modes/replicate_the_build/structure/destroy
tag @s remove {ns}.rtb.temp

scoreboard players set @s {ns}.alive 0
""")

	# /utils/finish_building
	write_function(f"{path}/utils/finish_building", f"""
scoreboard players operation #rtb_search {ns}.data = @s {ns}.rtb.id
tag @s add {ns}.rtb.temp
execute as @a[scores={{{ns}.alive=1..}},gamemode=survival] if score @s {ns}.rtb.id = #rtb_search {ns}.data run function {ns}:modes/replicate_the_build/utils/finish_building_player
tag @s remove {ns}.rtb.temp
""")

	# /utils/finish_building_player (translation ref rewritten)
	write_function(f"{path}/utils/finish_building_player", f"""
gamemode spectator @s
execute store result storage {ns}:rtb temp float 0.05 run scoreboard players get @s {ns}.rtb.time
function {ns}:modes/replicate_the_build/translations/utils_finish_building_player with storage {ns}:rtb

execute at @s run playsound minecraft:block.note_block.harp ambient @s ~ ~ ~ 1 2
""")

	# /utils/summon_verify
	write_function(f"{path}/utils/summon_verify", f"""
scoreboard players operation #myid {ns}.rtb.id = @s {ns}.rtb.id
execute summon marker run function {ns}:modes/replicate_the_build/utils/summon_verify_2
""")

	# /utils/summon_verify_2
	write_function(f"{path}/utils/summon_verify_2", f"""
tag @s add {ns}.rtb.verify
tag @s add {ns}.rtb.verify_island

scoreboard players operation @s {ns}.rtb.id = #myid {ns}.rtb.id
""")

	# /utils/tp_to_island
	write_function(f"{path}/utils/tp_to_island", f"""
scoreboard players operation #rtb_search {ns}.data = @s {ns}.rtb.id
tag @s add {ns}.rtb.temp
execute as @e[type=marker,tag={ns}.rtb.island] if score @s {ns}.rtb.id = #rtb_search {ns}.data at @s run tp @p[tag={ns}.rtb.temp] ~ ~1 ~
tag @a remove {ns}.rtb.temp
""")

	# /utils/verify_a_block
	write_function(f"{path}/utils/verify_a_block", f"""
# -29999997 22 1603
clone ~ ~ ~ ~ ~ ~ -29999997 22 1603

scoreboard players operation #search_id {ns}.rtb.id = @s {ns}.rtb.id
execute if blocks -29999997 22 1603 -29999997 22 1603 -29999997 23 1603 all as @a[scores={{{ns}.alive=1..}}] if score @s {ns}.rtb.id = #search_id {ns}.rtb.id run scoreboard players add @s {ns}.rtb.points 1
""")

