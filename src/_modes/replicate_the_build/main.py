
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

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /death
	write_function(f"{path}/death", """
function switch:utils/classic_death
tp @s 102000 100 102000
""")

	# /joined
	write_function(f"{path}/joined", """
# Ici : dans tous les cas, la personne passe en spectateur
gamemode spectator @s
scoreboard players set @s switch.alive 0
tp @s 102000 100 102000
""")

	# /process_end
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1
scoreboard players set #rtb_round_state switch.data 9

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
function switch:translations/common/process_end_survivors
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/replicate_the_build/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /round/0 (translation ref rewritten)
	write_function(f"{path}/round/0", """
function switch:modes/replicate_the_build/translations/round_0
function switch:modes/replicate_the_build/round/_common
""")

	# /round/1 (translation ref rewritten)
	write_function(f"{path}/round/1", """
function switch:modes/replicate_the_build/translations/round_1
function switch:modes/replicate_the_build/round/_common
""")

	# /round/2 (translation ref rewritten)
	write_function(f"{path}/round/2", """
function switch:modes/replicate_the_build/translations/round_2
function switch:modes/replicate_the_build/round/_common
""")

	# /round/3 (translation ref rewritten)
	write_function(f"{path}/round/3", """
kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]


function switch:modes/replicate_the_build/translations/round_3
scoreboard players add #rtb_round_state switch.data 1

scoreboard objectives remove switch.rtb.id
scoreboard objectives add switch.rtb.id dummy

kill @e[type=marker,tag=switch.rtb.island]
kill @e[type=marker,tag=switch.rtb.center]

summon marker 102000 98 101996 {Tags:["switch.rtb.center"]}

# 102000 98 101982, 101986 98 101982, 101986 98 101996, 101986 98 102010, 102000 98 102010, 102014 98 102010, 102014 98 101996,102014 98 101982

summon marker 102000 98 101982 {Tags:["switch.rtb.island"]}
summon marker 101986 98 101982 {Tags:["switch.rtb.island"]}
summon marker 101986 98 101996 {Tags:["switch.rtb.island"]}
summon marker 101986 98 102010 {Tags:["switch.rtb.island"]}
summon marker 102000 98 102010 {Tags:["switch.rtb.island"]}
summon marker 102014 98 102010 {Tags:["switch.rtb.island"]}
summon marker 102014 98 101996 {Tags:["switch.rtb.island"]}
summon marker 102014 98 101982 {Tags:["switch.rtb.island"]}




scoreboard players set #rtbteam switch.data 0
execute as @e[tag=switch.rtb.island,type=marker,sort=random] run function switch:modes/replicate_the_build/start/random_island


scoreboard players set #rtbteam switch.data 0
execute as @a[scores={switch.alive=1..},sort=random] run function switch:modes/replicate_the_build/start/select_teams

gamemode adventure @a[scores={switch.alive=1..}]
clear @a[tag=!detached]
kill @e[type=item]


# Tirage au sort de la structure
execute store result score #random switch.data run random value 0..10

execute as @e[type=marker,tag=switch.rtb.island] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/structure/place


bossbar set rtb.all name "Mémorisez !"
bossbar set rtb.all color green
scoreboard players set #rtb_memorize_time switch.data 140
execute store result bossbar rtb.all max run scoreboard players get #rtb_memorize_time switch.data
execute store result bossbar rtb.all value run scoreboard players get #rtb_memorize_time switch.data


execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1.5
""")

	# /round/4
	write_function(f"{path}/round/4", """

scoreboard players remove #rtb_memorize_time switch.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_memorize_time switch.data

execute if score #rtb_memorize_time switch.data matches ..0 run function switch:modes/replicate_the_build/round/4_end

""")

	# /round/4_end
	write_function(f"{path}/round/4_end", """
scoreboard players add #rtb_round_state switch.data 1

scoreboard players set @a[tag=!detached] switch.rtb.time 0


execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy







bossbar set rtb.all name "Répliquez"
bossbar set rtb.all color red
scoreboard players set #rtb_build_time switch.data 600
execute store result bossbar rtb.all max run scoreboard players get #rtb_build_time switch.data
execute store result bossbar rtb.all value run scoreboard players get #rtb_build_time switch.data


execute positioned -29999997 24 1603 run fill ~ ~ ~ ~6 ~6 ~6 air
execute positioned -29999997 24 1603 run fill ~ ~-1 ~ ~6 ~-1 ~6 stone
execute positioned -29999997 24 1603 run function switch:modes/replicate_the_build/structure/place

gamemode survival @a[scores={switch.alive=1..}]
clear @a[tag=!detached]
kill @e[type=item]
execute in switch:game run gamerule minecraft:block_drops true
execute positioned -29999997 24 1603 run function switch:modes/replicate_the_build/structure/give_player
""")

	# /round/5
	write_function(f"{path}/round/5", """
# Reduce time
scoreboard players remove #rtb_build_time switch.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_build_time switch.data



# execute if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all
execute as @e[type=marker,tag=switch.rtb.island] at @s if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all run function switch:modes/replicate_the_build/utils/finish_building

scoreboard players add @a[scores={switch.alive=1..},gamemode=survival] switch.rtb.time 1

execute if score #rtb_build_time switch.data matches ..0 run function switch:modes/replicate_the_build/round/5_end
execute if score #rtb_round_state switch.data matches 5 unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1..}] run function switch:modes/replicate_the_build/round/5_end

""")

	# /round/5_end
	write_function(f"{path}/round/5_end", """

scoreboard players add #rtb_round_state switch.data 1

gamemode spectator @a[scores={switch.alive=1..},gamemode=!spectator]


execute as @e[type=marker,tag=switch.rtb.center] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/structure/place


# Calcul du pourcentage de répliquation
kill @e[tag=switch.rtb.verify,type=marker]

execute as @e[type=marker,tag=switch.rtb.center] at @s run summon marker ~-3 ~ ~1 {Tags:["switch.rtb.verify","switch.rtb.verify_center"]}

execute as @e[type=marker,tag=switch.rtb.island] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/utils/summon_verify

scoreboard players set #rtb_dx switch.data 0
scoreboard players set #rtb_dy switch.data 0
scoreboard players set #rtb_dz switch.data 0

scoreboard players set @a[scores={switch.alive=1..}] switch.rtb.points 0


bossbar set rtb.all name "Calcul des scores ..."
bossbar set rtb.all max 343
bossbar set rtb.all value 0
bossbar set rtb.all color green
scoreboard players set #rtb_calcul_time switch.data 343

""")

	# /round/6 (NOTE: line with trailing space preserved)
	write_function(f"{path}/round/6", """
execute as @e[tag=switch.rtb.verify] at @s run particle happy_villager ~ ~ ~ .1 .1 .1 0 1 normal

scoreboard players remove #rtb_calcul_time switch.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_calcul_time switch.data



# The original block is at -29999997 23 1603
execute as @e[tag=switch.rtb.verify_center] at @s run clone ~ ~ ~ ~ ~ ~ -29999997 23 1603

# All island blocks are at -29999997 22 1603
execute as @e[tag=switch.rtb.verify_island] at @s run function switch:modes/replicate_the_build/utils/verify_a_block


# Now tp to the next block in the row
scoreboard players add #rtb_dx switch.data 1
execute as @e[tag=switch.rtb.verify] at @s run tp @s ~1 ~ ~


# Reset the x score and increment the z score
execute if score #rtb_dx switch.data matches 7.. run scoreboard players add #rtb_dz switch.data 1 
execute if score #rtb_dx switch.data matches 7.. as @e[tag=switch.rtb.verify] at @s run tp @s ~-7 ~ ~1
execute if score #rtb_dx switch.data matches 7.. run scoreboard players set #rtb_dx switch.data 0




execute if score #rtb_dz switch.data matches 7.. run scoreboard players add #rtb_dy switch.data 1
execute if score #rtb_dz switch.data matches 7.. as @e[tag=switch.rtb.verify] at @s run tp @s ~ ~1 ~-7
execute if score #rtb_dz switch.data matches 7.. run scoreboard players set #rtb_dz switch.data 0

execute if score #rtb_dy switch.data matches 7.. run function switch:modes/replicate_the_build/round/6_end
""")

	# /round/6_end
	write_function(f"{path}/round/6_end", """
scoreboard players add #rtb_round_state switch.data 1


bossbar set rtb.all name "Calcul des scores ..."
bossbar set rtb.all max 343
bossbar set rtb.all value 343
bossbar set rtb.all color green

scoreboard players set #rtb_wait_explosion switch.data 100

""")

	# /round/7
	write_function(f"{path}/round/7", """

execute as @a[tag=!detached] run function switch:modes/replicate_the_build/utils/display_score


scoreboard players remove #rtb_wait_score switch.data 1
execute if score #rtb_wait_score switch.data matches ..0 run function switch:modes/replicate_the_build/round/7_end
""")

	# /round/7_end (translation ref rewritten)
	write_function(f"{path}/round/7_end", """
scoreboard players add #rtb_round_state switch.data 1


scoreboard players set #min_score switch.data 343
scoreboard players operation #min_score switch.data < @a[tag=!detached] switch.rtb.points

execute as @a[scores={switch.alive=1..}] if score @s switch.rtb.points = #min_score switch.data run tag @s add switch.looser_score



scoreboard players set #max_time switch.data 0
scoreboard players operation #max_time switch.data > @a[tag=!detached] switch.rtb.time

execute as @a[scores={switch.alive=1..}] if score @s switch.rtb.time = #max_time switch.data run tag @s add switch.looser_time

tag @r[scores={switch.alive=1..},tag=switch.looser_score,tag=switch.looser_time,limit=1] add switch.looser

function switch:modes/replicate_the_build/translations/round_7_end

execute in switch:game run gamerule minecraft:block_drops false

execute as @p[tag=switch.looser] run function switch:modes/replicate_the_build/utils/explose_island


tag @a remove switch.looser_score
tag @a remove switch.looser_time
tag @a[tag=!detached,tag=switch.looser] remove switch.alive
tag @a remove switch.looser

kill @e[tag=switch.rtb.verify]


scoreboard players set #rtb_wait_explosion switch.data 40

""")

	# /round/8
	write_function(f"{path}/round/8", """

scoreboard players remove #rtb_wait_explosion switch.data 1

execute if score #rtb_wait_explosion switch.data matches ..0 run function switch:modes/replicate_the_build/round/8_end


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]
""")

	# /round/8_end
	write_function(f"{path}/round/8_end", """
execute store result score #nb_alive switch.data if entity @a[scores={switch.alive=1..}]

execute if score #nb_alive switch.data matches 2.. run scoreboard players set #rtb_round_state switch.data 0
execute if score #nb_alive switch.data matches ..1 run scoreboard players set #rtb_round_state switch.data 9


execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy
execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 0.5


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]
""")

	# /round/_common
	write_function(f"{path}/round/_common", """
scoreboard players add #rtb_round_state switch.data 1

execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1

kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]
""")

	# /second
	write_function(f"{path}/second", """
scoreboard players add #replicate_the_build_seconds switch.data 1


execute if score #rtb_round_state switch.data matches 3 run function switch:modes/replicate_the_build/round/3
execute if score #rtb_round_state switch.data matches 2 run function switch:modes/replicate_the_build/round/2
execute if score #rtb_round_state switch.data matches 1 run function switch:modes/replicate_the_build/round/1
execute if score #rtb_round_state switch.data matches 0 run function switch:modes/replicate_the_build/round/0
""")

	# /start (translation ref rewritten; NOTE: trailing space on "bossbar remove rtb.all ")
	write_function(f"{path}/start", """
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
function switch:modes/replicate_the_build/translations/start

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
""")

	# /start/random_island
	write_function(f"{path}/start/random_island", """
scoreboard players add #rtbteam switch.data 1

scoreboard players operation @s switch.rtb.id = #rtbteam switch.data
""")

	# /start/select_teams
	write_function(f"{path}/start/select_teams", """
scoreboard players add #rtbteam switch.data 1

scoreboard players operation @s switch.rtb.id = #rtbteam switch.data


function switch:modes/replicate_the_build/utils/tp_to_island
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.rtb.id
scoreboard objectives remove switch.rtb.time
scoreboard objectives remove switch.rtb.points

execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy

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
		"",
		"give @a[scores={switch.alive=1..}] diamond_pickaxe[unbreakable={},enchantments={silk_touch:1}]",
		"give @a[scores={switch.alive=1..}] diamond_hoe[unbreakable={},enchantments={silk_touch:1}]",
		"give @a[scores={switch.alive=1..}] diamond_axe[unbreakable={},enchantments={silk_touch:1}]",
		"give @a[scores={switch.alive=1..}] diamond_shovel[unbreakable={},enchantments={silk_touch:1}]",
		"",
		"",
		"",
		"",
		"",
	]
	for dx in range(7):
		for dy in range(7):
			for dz in range(7):
				give_lines.append(
					f"execute as @a[scores={{switch.alive=1..}}] run loot give @s mine ~{dx} ~{dy} ~{dz} diamond_pickaxe[enchantments={{silk_touch:1}}]"
				)
	write_function(f"{path}/structure/give_player", "\n".join(give_lines) + "\n")

	# /structure/place
	write_function(f"{path}/structure/place", """
execute if score #random switch.data matches 0 run place template switch:replicate_the_build/full_blue
execute if score #random switch.data matches 1 run place template switch:replicate_the_build/beacon
execute if score #random switch.data matches 2 run place template switch:replicate_the_build/beacon2
execute if score #random switch.data matches 3 run place template switch:replicate_the_build/chess
execute if score #random switch.data matches 4 run place template switch:replicate_the_build/dragon
execute if score #random switch.data matches 5 run place template switch:replicate_the_build/enchanting
execute if score #random switch.data matches 6 run place template switch:replicate_the_build/farm
execute if score #random switch.data matches 7 run place template switch:replicate_the_build/france
execute if score #random switch.data matches 8 run place template switch:replicate_the_build/lampadaire
execute if score #random switch.data matches 9 run place template switch:replicate_the_build/nether
execute if score #random switch.data matches 10 run place template switch:replicate_the_build/rush
""")

	# /structure/readme.md
	write_function(f"{path}/structure/readme.md", """
# Comment ajouter une structure ?


## Etape 1 : La structure

# Commence par build ou voler ta structure. Attention elle doit faire 7x7x7 blocs maximum.

# Sauvegarde là grâce à un structure block.

## Etape 2 : Le fichier

# Copie le fichier dans : ``datapacks/switch/data/switch/structures/replicate_the_build/``

## Etape 3 : Ajoute la structure au jeu

# Va dans le fichier ``datapacks/switch/data/switch/function/modes/replicate_the_build/structure/place.mcfunction``

#Ajoute une ligne avec le nom de la structure et en incrémentant le ``if score #random switch.data matches X`` de 1.

# Incrémente aussi dans ``datapacks/switch/data/switch/function/modes/replicate_the_build/round/3.mcfunction`` le ``scoreboard players set #modulo_rand switch.data X`` de 1.

## Etape 4 : Ajoute des items composants la structure et indique le temps voulu

# Va dans le fichier ``datapacks/switch/data/switch/function/modes/replicate_the_build/structure/give.mcfunction``

#Ajoute une ligne et modifie de même avec le même ID que précédemment. Tu dois donner tout les items composants la structure au joueur @s. Choisis aussi le temps imparti pour la construction de la structure (400 = 20 secondes par exemple).
""")

	# /tick
	write_function(f"{path}/tick", """
scoreboard players add #replicate_the_build_ticks switch.data 1


execute if score #rtb_round_state switch.data matches 9 run function switch:modes/replicate_the_build/process_end
execute if score #rtb_round_state switch.data matches 8 run function switch:modes/replicate_the_build/round/8
execute if score #rtb_round_state switch.data matches 7 run function switch:modes/replicate_the_build/round/7

execute if score #rtb_round_state switch.data matches 6 run function switch:modes/replicate_the_build/round/6
execute if score #rtb_round_state switch.data matches 6 run function switch:modes/replicate_the_build/round/6
execute if score #rtb_round_state switch.data matches 6 run function switch:modes/replicate_the_build/round/6

execute if score #rtb_round_state switch.data matches 5 run function switch:modes/replicate_the_build/round/5
execute if score #rtb_round_state switch.data matches 4 run function switch:modes/replicate_the_build/round/4


function switch:utils/on_death_run_function {function:"switch:modes/replicate_the_build/death"}


# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[scores={switch.alive=1..}] unless score #rtb_round_state switch.data matches 9 run function switch:modes/replicate_the_build/process_end
execute if score #replicate_the_build_seconds switch.data matches 600.. run function switch:modes/replicate_the_build/process_end
""")

	# /utils/display_score (translation ref rewritten)
	write_function(f"{path}/utils/display_score", """
tag @s add switch.temp
function switch:modes/replicate_the_build/translations/utils_display_score
tag @s remove switch.temp
""")

	# /utils/explose_island
	write_function(f"{path}/utils/explose_island", """
scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.data at @s positioned ~ ~ ~3 run summon creeper ~ ~ ~ {Fuse:0,ignited:true}
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.data at @s run function switch:modes/replicate_the_build/structure/destroy
tag @s remove switch.rtb.temp


scoreboard players set @s switch.alive 0
""")

	# /utils/finish_building
	write_function(f"{path}/utils/finish_building", """
scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @a[scores={switch.alive=1..},gamemode=survival] if score @s switch.rtb.id = #rtb_search switch.data run function switch:modes/replicate_the_build/utils/finish_building_player
tag @s remove switch.rtb.temp
""")

	# /utils/finish_building_player (translation ref rewritten)
	write_function(f"{path}/utils/finish_building_player", """
gamemode spectator @s
execute store result storage switch:rtb temp float 0.05 run scoreboard players get @s switch.rtb.time
function switch:modes/replicate_the_build/translations/utils_finish_building_player

execute at @s run playsound minecraft:block.note_block.harp ambient @s ~ ~ ~ 1 2
""")

	# /utils/summon_verify
	write_function(f"{path}/utils/summon_verify", """
scoreboard players operation #myid switch.rtb.id = @s switch.rtb.id
execute summon marker run function switch:modes/replicate_the_build/utils/summon_verify_2
""")

	# /utils/summon_verify_2
	write_function(f"{path}/utils/summon_verify_2", """
tag @s add switch.rtb.verify
tag @s add switch.rtb.verify_island

scoreboard players operation @s switch.rtb.id = #myid switch.rtb.id
""")

	# /utils/tp_to_island
	write_function(f"{path}/utils/tp_to_island", """
scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.data at @s run tp @p[tag=switch.rtb.temp] ~ ~1 ~
tag @a remove switch.rtb.temp
""")

	# /utils/verify_a_block
	write_function(f"{path}/utils/verify_a_block", """
# -29999997 22 1603
clone ~ ~ ~ ~ ~ ~ -29999997 22 1603

scoreboard players operation #search_id switch.rtb.id = @s switch.rtb.id
execute if blocks -29999997 22 1603 -29999997 22 1603 -29999997 23 1603 all as @a[scores={switch.alive=1..}] if score @s switch.rtb.id = #search_id switch.rtb.id run scoreboard players add @s switch.rtb.points 1
""")
