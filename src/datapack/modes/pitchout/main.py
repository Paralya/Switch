
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_no_drop
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "pitchout"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /_tp_give_common
	write_function(f"{path}/_tp_give_common", """
function switch:modes/pitchout/xp_bar

scoreboard players set @s switch.temp.cooldown 100
item replace entity @s armor.chest with diamond_chestplate[enchantments={binding_curse:1},attribute_modifiers=[{type:"knockback_resistance",slot:"chest",id:"switch.invulnerable",amount:100,operation:"add_value"}]]
attribute @s jump_strength base set 0

execute store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute store result score @s switch.temp.old_z run data get entity @s Pos[2]
""")

	# /blocks_run
	write_function(f"{path}/blocks_run", """
execute store result score #x switch.data run data get entity @s Pos[0]
execute store result score #z switch.data run data get entity @s Pos[2]
scoreboard players operation #x switch.data -= @s switch.temp.old_x
scoreboard players operation #z switch.data -= @s switch.temp.old_z
scoreboard players operation #x switch.data /= #2 switch.data
scoreboard players operation #z switch.data /= #2 switch.data
execute if score #x switch.data matches ..-1 run scoreboard players operation @s switch.temp.blocks_run -= #x switch.data
execute if score #x switch.data matches 1.. run scoreboard players operation @s switch.temp.blocks_run += #x switch.data
execute if score #z switch.data matches ..-1 run scoreboard players operation @s switch.temp.blocks_run -= #z switch.data
execute if score #z switch.data matches 1.. run scoreboard players operation @s switch.temp.blocks_run += #z switch.data
execute store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute store result score @s switch.temp.old_z run data get entity @s Pos[2]
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.blocks_run matches 500.. run advancement grant @s only switch:visible/47
""")

	# /death (translation ref rewritten)
	write_function(f"{path}/death", """
function switch:modes/pitchout/translations/death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/tp_give
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/tp_give

function switch:modes/pitchout/advancements/on_death

function switch:modes/_common/death_spectator_lives

""")

	# /give_items
	write_function(f"{path}/give_items", """
# Give sword
execute store result score #random switch.data run random value 0..3
execute if score #random switch.data matches 0 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:stardust_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:legendarium_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:solarium_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 3 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:darkium_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]

# Give bow
execute store result score #random switch.data run random value 0..2
execute if score #random switch.data matches 0 run item replace entity @s hotbar.1 with bow[item_model="switch:stardust_bow",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.1 with bow[item_model="switch:awakened_stardust_bow",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.1 with bow[item_model="switch:ultimate_bow",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]

# Give arrows
item replace entity @s hotbar.2 with arrow 64

# Give depending on the upgrades
execute if score @s switch.pitchout.boots matches 0 run item replace entity @s armor.feet with leather_boots[max_damage=5]
execute if score @s switch.pitchout.boots matches 1 run item replace entity @s armor.feet with leather_boots[max_damage=20]
execute if score @s switch.pitchout.boots matches 2 run item replace entity @s armor.feet with leather_boots[max_damage=30]
execute if score @s switch.pitchout.boots matches 3 run item replace entity @s armor.feet with leather_boots[max_damage=40]
execute if score @s switch.pitchout.boots matches 4 run item replace entity @s armor.feet with leather_boots[max_damage=50]
execute if score @s switch.pitchout.boots matches 5.. run item replace entity @s armor.feet with leather_boots[max_damage=65]
execute if score @s switch.pitchout.ender_pearl matches 0 run item replace entity @s hotbar.8 with ender_pearl[item_model="switch:dragon_pearl"] 3
execute if score @s switch.pitchout.ender_pearl matches 1 run item replace entity @s hotbar.8 with ender_pearl[item_model="switch:dragon_pearl"] 4
execute if score @s switch.pitchout.ender_pearl matches 2.. run item replace entity @s hotbar.8 with ender_pearl[item_model="switch:dragon_pearl"] 5
""")

	# /in_water_with_cooldown (translation ref rewritten)
	write_function(f"{path}/in_water_with_cooldown", """
# Depending on the map, teleport players back to spawn
execute if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/teleport_players
execute if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/teleport_players

# Message to player
function switch:modes/pitchout/translations/in_water_with_cooldown
""")

	# /joined
	write_function(f"{path}/joined", f"""
scoreboard players reset @s switch.alive
function {path}/death
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.alive=3..}] run advancement grant @s only switch:visible/7
function switch:modes/pitchout/translations/process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/pitchout/joined
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 199 run gamerule minecraft:show_death_messages false
execute if score #process_end switch.data matches 199 as @a[tag=!detached] at @s run spawnpoint @s ~ ~ ~
execute if score #process_end switch.data matches 199 run kill @a[tag=!detached]
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", """
scoreboard players add #pitchout_seconds switch.data 1

execute if score #pitchout_seconds switch.data matches -3 as @a[tag=!detached] at @s run function switch:modes/pitchout/give_items
execute if score #pitchout_seconds switch.data matches 100 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..3}] unless score @s switch.temp.damages matches 1.. run advancement grant @s only switch:visible/13

# 500 blocs run Pitchout
execute as @a[tag=!detached,gamemode=adventure] run function switch:modes/pitchout/blocks_run
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
scoreboard players set @a[tag=!detached] switch.alive 3
effect give @a[tag=!detached] speed infinite 0 true
effect give @a[tag=!detached] jump_boost infinite 2 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:fall_damage false

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"pitchout", maps:["pitchout_1","pitchout_halloween"]}
scoreboard players set #spawn_count switch.data 0
execute if data storage switch:main {map:"pitchout_1"} as @a[tag=!detached,sort=random] run function switch:modes/pitchout/map_1/tp_give
execute if data storage switch:main {map:"pitchout_halloween"} as @a[tag=!detached,sort=random] run function switch:modes/pitchout/map_halloween/tp_give
execute as @a[tag=!detached] run function switch:modes/pitchout/xp_bar

function switch:modes/pitchout/translations/start

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #pitchout_seconds switch.data -10
scoreboard players set #pitchout_ticks switch.data 0
scoreboard players set #process_end switch.data 0

data modify storage switch:temp pitchout set value []
execute as @a[tag=!detached] run function switch:modes/pitchout/advancements/setup_player

execute as @a[tag=!detached] store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute as @a[tag=!detached] store result score @s switch.temp.old_z run data get entity @s Pos[2]
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.damages
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.old_x
scoreboard objectives remove switch.temp.old_z
scoreboard objectives remove switch.temp.blocks_run

data remove storage switch:temp pitchout
""")

	# /tick (brace-heavy: plain string)
	write_function(f"{path}/tick", """
# Increment ticks counter
scoreboard players add #pitchout_ticks switch.data 1

# Prevent item drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/pitchout/no_drop

# Teleport players back to spawn if they fall in water and have cooldown
execute as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] run function switch:modes/pitchout/in_water_with_cooldown

# Kill players who fall in water (if no cooldown)
execute as @a[tag=!detached,scores={switch.alive=1..},predicate=switch:in_water,sort=random] run function switch:modes/pitchout/death

# Display colored particles above players based on lives remaining and player name
# 4 lives (blue)
execute at @a[tag=!detached,scores={switch.alive=4}] run particle dust{color:[0.0,0.0,0.75],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
# 3 lives (special colors for specific players, green for others)
execute at @a[tag=!detached,scores={switch.alive=3},name="Stoupy51"] run particle dust{color:[0.0,0.0,0.75],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name="AirDox_"] run particle dust{color:[0.749,0.514,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name="Luxio_"] run particle dust{color:[0.557,0.122,0.643],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name="Thitanas"] run particle dust{color:[0.0,0.0,0.5],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name=!"Stoupy51",name=!"AirDox_",name=!"Luxio_",name=!"Thitanas"] run particle dust{color:[0.0,0.75,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
# 2 lives (yellow)
execute at @a[tag=!detached,scores={switch.alive=2}] run particle dust{color:[0.75,0.75,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
# 1 life (red)
execute at @a[tag=!detached,scores={switch.alive=1}] run particle dust{color:[0.75,0.0,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1

# Handle respawn cooldown
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
execute as @a[scores={switch.temp.cooldown=1..80}] run attribute @s jump_strength base reset
item replace entity @a[scores={switch.temp.cooldown=1}] armor.chest with air

# Handle deaths from unknown causes
function switch:utils/on_death_run_function {function:"switch:modes/pitchout/death"}

# Check for game end conditions
# Count remaining players
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,scores={switch.alive=1..}]
# End game if only 1 or fewer players remain
execute if score #pitchout_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/pitchout/process_end
# End game after 600 seconds (10 minutes)
execute if score #pitchout_seconds switch.data matches 600.. run function switch:modes/pitchout/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
function switch:modes/_common/xp_bar/three_lives
""")

	# === advancements ===

	# /advancements/death_macro
	write_function(f"{path}/advancements/death_macro", """
$data modify storage switch:temp pitchout[{id:$(my_id)}].killed_by append value {id:$(attacker_id)}
$execute if score @s switch.alive matches 0 run function switch:modes/pitchout/advancements/harcele_verif {my_id:$(my_id)}
""")

	# /advancements/harcele_verif
	write_function(f"{path}/advancements/harcele_verif", """
# input storage $(my_id), & switch:temp pitchout[{id:$(my_id)}].killed_by[{id:X}, {id:Y}, ...]

$execute store result score #count switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by
execute unless score #count switch.data matches 3 run return 1

$execute store result score #id_1 switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by[0].id
$execute store result score #id_2 switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by[1].id
$execute store result score #id_3 switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by[2].id

# If every lives taken are the same, grant the "Harcelé" advancement.
execute unless score #test_mode switch.data matches 1 if score #id_1 switch.data = #id_2 switch.data if score #id_1 switch.data = #id_3 switch.data run advancement grant @s only switch:visible/40

# Grant "Harceleur" advancement
execute unless score #test_mode switch.data matches 1 if score #id_1 switch.data = #id_2 switch.data if score #id_1 switch.data = #id_3 switch.data as @a[tag=!detached] if score @s switch.id = #id_1 switch.data run advancement grant @s only switch:visible/58
""")

	# /advancements/hurt_player
	write_function(f"{path}/advancements/hurt_player", """
advancement revoke @s only switch:pitchout/hurt_entity
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"pitchout"} run scoreboard players add @s switch.temp.damages 1
""")

	# /advancements/on_death
	write_function(f"{path}/advancements/on_death", """
data modify storage switch:temp input set value {my_id:0,attacker_id:0}
execute store result storage switch:temp input.my_id int 1 run scoreboard players get @s switch.id
execute on attacker store result storage switch:temp input.attacker_id int 1 run scoreboard players get @s switch.id
function switch:modes/pitchout/advancements/death_macro with storage switch:temp input
""")

	# /advancements/setup_player
	write_function(f"{path}/advancements/setup_player", """
data modify storage switch:temp temp set value {id:0,killed_by:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp pitchout append from storage switch:temp temp
data remove storage switch:temp temp
""")

	# === map_1 ===

	# /map_1/teleport_players
	write_function(f"{path}/map_1/teleport_players", """
execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 1060 111 1060 135 0
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 1040 111 1040 -45 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 1040 111 1060 -135 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 1060 111 1040 45 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 1050 111 1050 0 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 1065 111 1050 90 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 1035 111 1050 -90 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 1050 111 1065 180 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 1050 111 1035 0 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 1050 111 1032 180 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 1032 111 1050 90 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 1050 111 1018 0 0
execute if score #spawn_count switch.data matches 12 in switch:game run tp @s 1018 111 1050 -90 0
execute if score #spawn_count switch.data matches 13 in switch:game run tp @s 1072 111 1072 135 0
execute if score #spawn_count switch.data matches 14 in switch:game run tp @s 1072 111 1028 45 0
execute if score #spawn_count switch.data matches 15 in switch:game run tp @s 1028 111 1028 -45 0
execute if score #spawn_count switch.data matches 16 in switch:game run tp @s 1028 111 1072 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 17 run scoreboard players set #spawn_count switch.data 0
""")

	# /map_1/tp_give
	write_function(f"{path}/map_1/tp_give", f"""
function {path}/map_1/teleport_players
function {path}/_tp_give_common
""")

	# === map_halloween ===

	# /map_halloween/teleport_players
	write_function(f"{path}/map_halloween/teleport_players", """
execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 125061 109 125036 0 0
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 125061 109 125086 180 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 125036 109 125061 -90 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 125086 109 125061 90 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 125061 109 125017 0 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 125061 109 125105 180 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 125017 109 125061 -90 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 125105 109 125061 90 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 125031 109 125031 -45 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 125091 109 125091 135 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 125091 109 125031 45 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 125031 109 125091 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 12 run scoreboard players set #spawn_count switch.data 0
""")

	# /map_halloween/tp_give
	write_function(f"{path}/map_halloween/tp_give", f"""
function {path}/map_halloween/teleport_players
function {path}/_tp_give_common
""")
