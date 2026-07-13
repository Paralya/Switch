
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem, write_kit
from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "beat_the_kings"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:modes/beat_the_kings/death/player"})
	write_function(f"{path}/calls/inventory_changed", f"""
tag @s add {ns}.temp.inventory_changed
""")
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] {ns}.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"{mode}", maps:["traitor_original","mushroom_plains","dark_forest_hills","zonweeb_highschool","hider_mansion","nuketown_no_barrier"]}}

execute in {ns}:game run gamerule minecraft:mob_griefing true
execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {translations}/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 901
scoreboard players set #beat_the_kings_seconds {ns}.data -10
scoreboard players set #beat_the_kings_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.killed_kings teamkill.dark_purple
scoreboard objectives setdisplay list {ns}.health

# Choix des rôles + give d'items
team add {ns}.temp.civil {{"text":"[Civil]","color":"gray"}}
team add {ns}.temp.king {{"text":"[King]","color":"dark_purple"}}
team modify {ns}.temp.civil color gray
team modify {ns}.temp.king color dark_purple
scoreboard players set #next_role {ns}.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/roles/main

# Equilibrage : on adapte le nombre de gaps du roi au ratio civils/roi (4 civils/roi = optimal = 8 gaps)
function {path}/balance_king_gaps

execute as @a[tag=!detached] at @s run function {path}/give_items

give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion dévastatrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:7039516,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:110,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion destructrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:5711412,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:1b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:320,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion de malnutrition du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{custom_color:12763581,custom_effects:[{{id:"mining_fatigue",amplifier:1b,duration:60}},{{id:"hunger",amplifier:1b,duration:300}},{{id:"poison",amplifier:1b,duration:40}}]}}]

give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion dévastatrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:7039516,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:110,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion destructrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:5711412,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:1b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:320,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion de malnutrition du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{custom_color:12763581,custom_effects:[{{id:"mining_fatigue",amplifier:1b,duration:60}},{{id:"hunger",amplifier:1b,duration:300}},{{id:"poison",amplifier:1b,duration:40}}]}}]

# Teleportation des joueurs ensemble (par team)
tp @a[team={ns}.temp.civil] @r[team={ns}.temp.civil]
tp @a[team={ns}.temp.king] @r[team={ns}.temp.king]
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.civil
team remove {ns}.temp.king

scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.killed_kings
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #beat_the_kings_ticks {ns}.data 1

execute as @a[tag=!detached,tag={ns}.to_tp] run function {ns}:modes/_common/teleport_to_death

function {ns}:utils/on_death_run_function {{function:"{path}/death/player"}}
execute if score #beat_the_kings_seconds {ns}.data matches 1..900 as @e[type=marker,tag={ns}.temp.player,tag=!{ns}.player_dead] run function {ns}:modes/_common/death/detect
execute if score #beat_the_kings_seconds {ns}.data matches 1..900 as @e[type=marker,tag={ns}.player_dead] run function {path}/death/for_global

# Advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @a[scores={{{ns}.temp.killed_kings=1..}}] only {ns}:visible/66

# Détection de fin de partie
execute if score #beat_the_kings_seconds {ns}.data matches 1..900 run function {path}/detect_end
execute if score #beat_the_kings_seconds {ns}.data matches 901.. run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #beat_the_kings_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

execute if score #beat_the_kings_seconds {ns}.data matches 0.. run function {path}/xp_bar
execute if score #beat_the_kings_seconds {ns}.data matches 0.. run effect give @a[tag=!detached,team={ns}.temp.king] resistance infinite 3 true
execute if score #beat_the_kings_seconds {ns}.data matches 0 run function {path}/roles/announcement

execute if score #beat_the_kings_seconds {ns}.data matches 30 as @a[tag=!detached,team={ns}.temp.king] at @s run playsound entity.experience_orb.pickup ambient @s

# Remaining time
function {ns}:modes/_common/compute_mins_secs
function {translations}/second
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
execute if entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.civil] unless entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.king] run scoreboard players add #game_state {ns}.data 1
execute if entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.king] unless entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.civil] run scoreboard players add #game_state {ns}.data 2
execute unless entity @a[scores={{{ns}.alive=1..}}] run scoreboard players add #game_state {ns}.data 3

# 1 = que des civils
# 2 = que des kings
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..3 run scoreboard players set #beat_the_kings_seconds {ns}.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.civil] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.king] at @s run function {ns}:engine/add_win

# Visuel de fin de partie
execute if score #beat_the_kings_seconds {ns}.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death/player
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /give_items/civil and /give_items/king (two loadouts, so each resolves its own slots); both
	# keep their team selector, so give_items can call them unconditionally.
	civil: str = f"team={ns}.temp.civil"
	king: str = f"team={ns}.temp.king"
	write_kit(f"{path}/give_items/civil", Kit("civil", pre="# Starter kit", items=(
		KitItem(slot="armor.head", item="iron_helmet", selector=civil),
		KitItem(slot="armor.chest", item="diamond_chestplate", selector=civil),
		KitItem(slot="armor.legs", item="chainmail_leggings", selector=civil),
		KitItem(slot="armor.feet", item="iron_boots[enchantments={feather_falling:2}]", selector=civil),
		KitItem(role="blocks", item="oak_planks", count=64, slot="weapon.offhand", selector=civil),
		KitItem(role="melee", item="iron_sword[enchantments={sharpness:5}]", slot="hotbar.0", selector=civil),
		KitItem(role="ranged", item="bow", slot="hotbar.1", selector=civil),
		KitItem(role="mobility", item="water_bucket", slot="hotbar.7", selector=civil),
		KitItem(role="heal", item="golden_apple", count=5, slot="hotbar.8", selector=civil),
		KitItem(item="arrow", count=16, slot="inventory.0", selector=civil),
	)))
	# reserved: give_king_gaps (in post) writes the golden apples at literal hotbar.7 — the resolver
	# must never hand that slot out, or the gaps would overwrite a remapped item.
	write_kit(f"{path}/give_items/king", Kit("king", reserved=("hotbar.7",), items=(
		KitItem(slot="armor.head", item="golden_helmet[enchantments={protection:3,unbreaking:10}]", selector=king),
		KitItem(role="mobility", item="water_bucket", slot="hotbar.0", selector=king),
		KitItem(role="melee", item="golden_sword[enchantments={unbreaking:3,sharpness:3}]", slot="hotbar.1", selector=king),
		KitItem(role="ranged", item="bow[enchantments={flame:1,punch:1}]", slot="hotbar.3", selector=king),
		KitItem(role="blocks", item="oak_planks", count=64, slot="hotbar.8", selector=king),
		KitItem(item="arrow", count=45, slot="inventory.0", selector=king),
	), post=f"""
execute if entity @s[{king}] run function {path}/give_king_gaps with storage {ns}:temp king_gaps
effect give @s[{king}] resistance infinite 3 true
effect give @s[{king}] speed infinite 0 true
effect give @s[{king}] health_boost infinite 1 true
"""))

	# /give_items
	write_function(f"{path}/give_items", f"""
function {ns}:modes/beat_the_kings/give_items/civil
function {ns}:modes/beat_the_kings/give_items/king

attribute @s attack_speed base set 1024
""")

	# /balance_king_gaps
	# Le roi est trop fort quand il y a moins de civils que prévu par tête. On calcule le ratio
	# civils/roi (optimal = 4, ce qui donne 8 gaps) et on descend le nombre de gaps du roi jusqu'à
	# un minimum de 3, pour rééquilibrer les parties avec un nombre de joueurs non optimal.
	write_function(f"{path}/balance_king_gaps", f"""
scoreboard players set #n_civils {ns}.data 0
scoreboard players set #n_kings {ns}.data 1
execute store result score #n_civils {ns}.data if entity @a[tag=!detached,team={ns}.temp.civil]
execute store result score #n_kings {ns}.data if entity @a[tag=!detached,team={ns}.temp.king]
execute if score #n_kings {ns}.data matches ..0 run scoreboard players set #n_kings {ns}.data 1

# Gaps = 2 * (civils / roi), borné entre 3 et 8
scoreboard players operation #king_gaps {ns}.data = #n_civils {ns}.data
scoreboard players operation #king_gaps {ns}.data /= #n_kings {ns}.data
scoreboard players operation #king_gaps {ns}.data *= #2 {ns}.data
execute if score #king_gaps {ns}.data matches 8.. run scoreboard players set #king_gaps {ns}.data 8
execute if score #king_gaps {ns}.data matches ..3 run scoreboard players set #king_gaps {ns}.data 3

execute store result storage {ns}:temp king_gaps.count int 1 run scoreboard players get #king_gaps {ns}.data
""")

	# /give_king_gaps (macro: count)
	write_function(f"{path}/give_king_gaps", """
$item replace entity @s hotbar.7 with golden_apple $(count)
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)



	# /death/player
	write_function(f"{path}/death/player", f"""
scoreboard players set @s {ns}.alive 0
tag @s add {ns}.to_tp
function {ns}:utils/classic_death
""")

	# /death/for_global
	write_function(f"{path}/death/for_global", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
clear @a[tag=!detached,predicate={ns}:has_same_id]

function {path}/death/inventory_filter
execute at @s run function {ns}:modes/_common/death/inventory_drop
execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
kill @s
""")


	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", f"""
function {ns}:modes/_common/death/keep_combat_items
data modify entity @s data.Inventory set from storage {ns}:main Inventory
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
# Role selection (1/4 kings)
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.king @s
execute if score #next_role {ns}.data matches 2..5 run team join {ns}.temp.civil @s
execute if score #next_role {ns}.data matches 6 run team join {ns}.temp.king @s
execute if score #next_role {ns}.data matches 7..10 run team join {ns}.temp.civil @s
execute if score #next_role {ns}.data matches 10.. run scoreboard players set #next_role {ns}.data 0

# Linked marker for offline players
setblock 0 3 0 yellow_shulker_box
loot insert 0 3 0 loot {ns}:get_username
scoreboard players operation #player_id {ns}.id = @s {ns}.id
tag @s add {ns}.temp
execute summon marker run function {path}/roles/marker
tag @s remove {ns}.temp
setblock 0 3 0 air
""")

	# /roles/announcement
	write_function(f"{path}/roles/announcement", f"""
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
function {translations}/roles_announcement
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", f"""
scoreboard players operation @s {ns}.id = #player_id {ns}.id
data modify entity @s data.name set from block 0 3 0 Items[0].components."minecraft:profile".name
execute if entity @p[tag={ns}.temp,team={ns}.temp.king] run scoreboard players set @s {ns}.alive 1
execute if entity @p[tag={ns}.temp,team={ns}.temp.civil] run scoreboard players set @s {ns}.alive 2
tag @s add {ns}.temp.player
""")
