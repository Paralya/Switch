
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "block_party"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
# Make sure the map if fully regenerated before starting
execute if score #rg_block_party switch.data matches 1.. run function {path}/verify_regeneration
schedule clear switch:maps/survival/block_party/regenerate

effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] speed infinite 3 true
time set 18000

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"{mode}", maps:["{mode}"]}}
function {translations}/start
execute if data storage switch:records block_party run function {path}/record_tellraw with storage switch:records block_party

scoreboard players set #block_party_seconds switch.data -10
scoreboard players set #block_party_ticks switch.data -200
scoreboard players set #block_party_round switch.data 1
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.time_since_movement dummy

# Data storage
execute unless data storage switch:maps block_party run data modify storage switch:maps block_party set value []
""")

	# /stop
	write_function(f"{path}/stop", """
stopsound @a[tag=!detached]
scoreboard objectives remove switch.temp.old_x
scoreboard objectives remove switch.temp.old_z
scoreboard objectives remove switch.temp.time_since_movement
""")

	# /tick
	write_function(f"{path}/tick", f"""
## Death system
execute as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if block ~ ~ ~ moving_piston run function {path}/death
function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute as @e[type=!player] at @s if block ~ ~ ~ moving_piston run tp @s 0 -10000 0
kill @e[type=item]

## Game on the line
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Basic timer & particles
execute if score #remaining_players switch.data matches 2.. run scoreboard players add #block_party_ticks switch.data 1
execute if score #block_party_ticks switch.data matches -100.. run particle note 110040 267 110040 64 2 64 1 8

# Paint cow advancement
execute unless score #test_mode switch.data matches 1 if score #block_party_ticks switch.data matches -130 if score #block_party_round switch.data matches 10.. at @e[type=marker,tag=switch.paint_marker] positioned ~-2 ~-1 ~-2 run advancement grant @a[tag=!detached,gamemode=!spectator,dx=4,dy=5,dz=4] only switch:visible/71
execute if score #block_party_ticks switch.data matches -130 run kill @e[type=marker,tag=switch.paint_marker]

# Pick a random art 7 seconds before the start of the game
execute if score #block_party_ticks switch.data matches -100 summon marker run function {path}/core/pick_random_art

# Give the block needed for everyone
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 0 run function {path}/core/give_block


# Timer depending on rounds + stop sound
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 0.. run function {path}/core/timer_per_round
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 500.. as @e[tag=switch.paint_cow] at @s run function {path}/core/paint_cow
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 1000.. run stopsound @a[tag=!detached] record
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 1000.. unless score #process_end switch.data matches 1.. run function {path}/core/remove_blocks
function {path}/xp_bar


## End game
execute if score #block_party_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #block_party_seconds switch.data matches 1800.. run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #block_party_seconds switch.data 1

# Moved advancement
execute as @a[tag=!detached,gamemode=adventure] run function {path}/check_movement
scoreboard players add @a[tag=!detached,gamemode=adventure] switch.temp.time_since_movement 1
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=adventure,scores={{switch.temp.time_since_movement=25..}}] only switch:visible/82
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
execute if entity @s[gamemode=!spectator] run summon lightning_bolt ~ ~-5 ~
execute if entity @s[gamemode=!spectator] run tag @s add switch.temp
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] on attacker if entity @s[type=ravager] run advancement grant @p[tag=switch.temp] only switch:visible/31
execute if entity @s[gamemode=!spectator] run tag @s remove switch.temp
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] if score #block_party_round switch.data matches ..2 run advancement grant @s only switch:visible/35

gamemode spectator @s
execute unless score #process_end switch.data matches 1 run tp @s @r[tag=!detached,gamemode=!spectator]
effect clear @s
clear @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] run function {path}/record_save
function switch:translations/common/process_end_solo_winner

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 1000 points = 100%
scoreboard players operation #points switch.data = #block_party_ticks switch.data
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #block_party_round switch.data
function switch:modes/_common/xp_bar/levels
""")

	# /check_movement
	write_function(f"{path}/check_movement", """
execute store result score #x switch.data run data get entity @s Pos[0] 10
execute store result score #z switch.data run data get entity @s Pos[2] 10
scoreboard players operation #x switch.data -= @s switch.temp.old_x
scoreboard players operation #z switch.data -= @s switch.temp.old_z
execute unless score #x switch.data matches 0 run scoreboard players set @s switch.temp.time_since_movement 0
execute unless score #z switch.data matches 0 run scoreboard players set @s switch.temp.time_since_movement 0
execute store result score @s switch.temp.old_x run data get entity @s Pos[0] 10
execute store result score @s switch.temp.old_z run data get entity @s Pos[2] 10
""")

	# /verify_regeneration
	write_function(f"{path}/verify_regeneration", f"""
# Call the regeneration function one time
function switch:maps/survival/block_party/regenerate

# If it's still not finished, continue looping until it is
execute if score #rg_block_party switch.data matches 1.. run function {path}/verify_regeneration
""")

	# /record_save
	write_function(f"{path}/record_save", f"""
clear @s
loot replace entity @s armor.head loot switch:get_username
scoreboard players set #record switch.data 0
execute store result score #record switch.data run data get storage switch:records block_party.round
execute if score #block_party_round switch.data > #record switch.data store result storage switch:records block_party.round int 1 run scoreboard players get #block_party_round switch.data
execute if score #block_party_round switch.data > #record switch.data run data modify storage switch:records block_party.player set from entity @s Inventory[0].components."minecraft:profile".name
execute if score #block_party_round switch.data > #record switch.data as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
execute if score #block_party_round switch.data > #record switch.data run function {path}/record_tellraw with storage switch:records block_party
""")

	# /record_tellraw
	write_function(f"{path}/record_tellraw", f"""
function {translations}/record_tellraw with storage switch:records block_party
scoreboard players reset #record switch.data
""")


	# /core/damage_cow
	write_function(f"{path}/core/damage_cow", """
damage @e[tag=switch.paint_cow,limit=1] 1 arrow by @p from @p
""")

	# /core/get_block_count_loop
	write_function(f"{path}/core/get_block_count_loop", f"""
# Add block count and continue loop if not air
scoreboard players add #block_count switch.data 1
function {translations}/core_get_block_count_loop
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run function {path}/core/get_block_count_loop
""")

	# /core/give_block
	write_function(f"{path}/core/give_block", f"""
## Switch case
data modify storage switch:main Item set from block 0 4 0 Items[0]
scoreboard players set #bp_block switch.data -1
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:white_concrete"}} run scoreboard players set #bp_block switch.data 0
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:orange_concrete"}} run scoreboard players set #bp_block switch.data 1
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:magenta_concrete"}} run scoreboard players set #bp_block switch.data 2
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:light_blue_concrete"}} run scoreboard players set #bp_block switch.data 3
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:yellow_concrete"}} run scoreboard players set #bp_block switch.data 4
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:lime_concrete"}} run scoreboard players set #bp_block switch.data 5
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:pink_concrete"}} run scoreboard players set #bp_block switch.data 6
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:gray_concrete"}} run scoreboard players set #bp_block switch.data 7
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:light_gray_concrete"}} run scoreboard players set #bp_block switch.data 8
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:cyan_concrete"}} run scoreboard players set #bp_block switch.data 9
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:purple_concrete"}} run scoreboard players set #bp_block switch.data 10
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:blue_concrete"}} run scoreboard players set #bp_block switch.data 11
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:brown_concrete"}} run scoreboard players set #bp_block switch.data 12
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:green_concrete"}} run scoreboard players set #bp_block switch.data 13
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:red_concrete"}} run scoreboard players set #bp_block switch.data 14
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{{id:"minecraft:black_concrete"}} run scoreboard players set #bp_block switch.data 15

# Give item with name
execute if score #bp_block switch.data matches -1 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"text":"Beige","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 0 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.white","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 1 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.orange","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 2 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.magenta","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 3 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.light_blue","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 4 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.yellow","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 5 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.lime","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 6 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.pink","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 7 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.gray","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 8 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.light_gray","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 9 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.cyan","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 10 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.purple","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 11 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.blue","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 12 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.brown","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 13 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.green","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 14 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.red","italic":false,"color":"aqua"}}
execute if score #bp_block switch.data matches 15 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {{"translate":"color.minecraft.black","italic":false,"color":"aqua"}}
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.0 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.2 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.4 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.6 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.8 from block 0 4 0 container.0

# Title players

# Tellraw players
function {translations}/core_give_block


# Playsound and remove shulker box
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
setblock 0 4 0 air
""")

	# /core/paint_cow
	write_function(f"{path}/core/paint_cow", """
## Function executed as and at the paint cow

# Depending on the color, change the ground
execute if score #bp_block switch.data matches -1 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 white_terracotta replace #switch:block_party/all
execute if score #bp_block switch.data matches 0 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 white_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 1 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 orange_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 2 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 magenta_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 3 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 light_blue_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 4 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 yellow_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 5 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 lime_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 6 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 pink_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 7 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 gray_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 8 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 light_gray_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 9 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 cyan_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 10 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 purple_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 11 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 blue_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 12 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 brown_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 13 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 green_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 14 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 red_concrete replace #switch:block_party/all
execute if score #bp_block switch.data matches 15 run fill ~-1.69 ~-1 ~-1.69 ~1.69 ~-1 ~1.69 black_concrete replace #switch:block_party/all

# Summon marker to know what players survived because of the paint cow
summon marker ~ ~ ~ {Tags:["switch.paint_marker"]}

# Kill paint cow and explode
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound switch:explosion block @a[tag=!detached]
kill @s
""")

	# /core/pick_random_art
	write_function(f"{path}/core/pick_random_art", f"""
## Choose pixel art
# If list is empty, remade it
scoreboard players set #art_count switch.data 0
execute store result score #art_count switch.data if data storage switch:maps block_party[]
execute if score #art_count switch.data matches 0 run function {path}/core/remake_list/main

# Choose a random pixel art for the game
execute store result score #bp_selected_art switch.data run data get storage switch:maps block_party[0]
data remove storage switch:maps block_party[0]

# Teleport current marker to the selected pixel art
tp @s 110008 248 110008
scoreboard players set #y_pos switch.data 248
scoreboard players operation #y_pos switch.data -= #bp_selected_art switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #y_pos switch.data

# Clone the selected pixel art
execute at @s run clone ~ ~ ~ ~63 ~ ~63 ~ 263 ~ replace force



## Choose block
# Get the number of blocks in the pixel art
scoreboard players set #block_count switch.data 0
execute at @s positioned ~ ~ ~65 run function {path}/core/get_block_count_loop

# Choose a random block for the pixel art
scoreboard players operation #modulo_rand switch.data = #block_count switch.data
function switch:utils/get_random/main
scoreboard players operation #bp_selected_block switch.data = #random switch.data

# Teleport current marker to the selected block
scoreboard players set #z_pos switch.data 110073
scoreboard players operation #z_pos switch.data += #bp_selected_block switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z_pos switch.data

# Get the block at the current marker
setblock 0 4 0 air
setblock 0 4 0 yellow_shulker_box
execute at @s run loot insert 0 4 0 mine ~ ~ ~ diamond_pickaxe



## Others
# Tellraw, Playsound, and Clear all
function {translations}/core_pick_random_art
execute as @a[tag=!detached] at @s run playsound entity.villager.ambient ambient @s
clear @a[tag=!detached,gamemode=adventure]

# Play random music
execute store result score #random switch.data run random value 1..18
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound music_disc.blocks record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound music_disc.cat record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound music_disc.chirp record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound music_disc.creator record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound music_disc.creator_music_box record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound music_disc.far record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound music_disc.lava_chicken record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound music_disc.mall record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound music_disc.mellohi record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound music_disc.otherside record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound music_disc.pigstep record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound music_disc.precipice record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 13 as @a[tag=!detached] at @s run playsound music_disc.relic record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 14 as @a[tag=!detached] at @s run playsound music_disc.stal record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 15 as @a[tag=!detached] at @s run playsound music_disc.strad record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 16 as @a[tag=!detached] at @s run playsound music_disc.tears record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 17 as @a[tag=!detached] at @s run playsound music_disc.wait record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 18 as @a[tag=!detached] at @s run playsound music_disc.ward record @s ~ ~ ~ 10000 1 1

# Summon a paint cow randomly (1/3 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon cow ~ ~ ~ {{CustomName:{{"text":"Gertrude","color":"yellow"}},CustomNameVisible:true,Tags:["switch.paint_cow","switch.block_party_mob"],AbsorptionAmount:2048.0f,DeathLootTable:"empty",attributes:[{{id:"max_absorption",base:2048.0}},{{id:"movement_speed",base:5.0d}}]}}

# Summon ravager (1/4 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon ravager ~ ~ ~ {{Invulnerable:true,CustomName:{{"text":"Vachette","color":"red"}},CustomNameVisible:true,Tags:["switch.ravager","switch.block_party_mob"],DeathLootTable:"empty"}}

# Spreadplayers the entities
execute as @e[tag=switch.block_party_mob] run function switch:maps/spread_one_player
effect give @e[tag=switch.ravager] slow_falling infinite 0 true
schedule function {path}/core/damage_cow 1s

# Kill marker
kill @s
""")

	# /core/remove_blocks
	write_function(f"{path}/core/remove_blocks", """
# Schedule a new round
scoreboard players set #block_party_ticks switch.data -160
scoreboard players add #block_party_round switch.data 1

# Switch case to remove blocks (110008 263 110008 => 110072 263 110072)
execute if score #bp_block switch.data matches -1 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_white_terracotta
execute if score #bp_block switch.data matches 0 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_white_concrete
execute if score #bp_block switch.data matches 1 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_orange
execute if score #bp_block switch.data matches 2 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_magenta
execute if score #bp_block switch.data matches 3 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_light_blue
execute if score #bp_block switch.data matches 4 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_yellow
execute if score #bp_block switch.data matches 5 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_lime
execute if score #bp_block switch.data matches 6 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_pink
execute if score #bp_block switch.data matches 7 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_gray
execute if score #bp_block switch.data matches 8 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_light_gray
execute if score #bp_block switch.data matches 9 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_cyan
execute if score #bp_block switch.data matches 10 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_purple
execute if score #bp_block switch.data matches 11 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_blue
execute if score #bp_block switch.data matches 12 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_brown
execute if score #bp_block switch.data matches 13 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_green
execute if score #bp_block switch.data matches 14 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_red
execute if score #bp_block switch.data matches 15 run fill 110008 263 110008 110072 263 110072 air replace #switch:block_party/not_black
""")

	# /core/timer_per_round
	write_function(f"{path}/core/timer_per_round", """
# Timer depending on rounds (Round 1: ~6s, Round 2: ~5s, Round 3: ~4s, Round 4: ~3.5s, Round 5: ~3s, Round 6: ~2.5s, Round 7: ~2.25s, Round 8: ~2.0s, Round 9: ~1.8s, Round 10: ~1.6s)
execute if score #block_party_round switch.data matches 1 run scoreboard players add #block_party_ticks switch.data 7
execute if score #block_party_round switch.data matches 2 run scoreboard players add #block_party_ticks switch.data 9
execute if score #block_party_round switch.data matches 3 run scoreboard players add #block_party_ticks switch.data 12
execute if score #block_party_round switch.data matches 4 run scoreboard players add #block_party_ticks switch.data 14
execute if score #block_party_round switch.data matches 5 run scoreboard players add #block_party_ticks switch.data 17
execute if score #block_party_round switch.data matches 6 run scoreboard players add #block_party_ticks switch.data 19
execute if score #block_party_round switch.data matches 7 run scoreboard players add #block_party_ticks switch.data 22
execute if score #block_party_round switch.data matches 8 run scoreboard players add #block_party_ticks switch.data 24
execute if score #block_party_round switch.data matches 9 run scoreboard players add #block_party_ticks switch.data 27
execute if score #block_party_round switch.data matches 10.. run scoreboard players add #block_party_ticks switch.data 29
execute if score #block_party_round switch.data matches 20 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=adventure] only switch:visible/24
""")

	# /core/remake_list/get_art_count_loop
	write_function(f"{path}/core/remake_list/get_art_count_loop", f"""
# Add position to the list
execute store result storage switch:temp input int 2 run scoreboard players get #art_count switch.data
data modify storage switch:maps block_party append from storage switch:temp input

# Add art count and continue loop if not air
scoreboard players add #art_count switch.data 1
execute positioned ~ ~-2 ~ unless block ~ ~ ~ air run function {path}/core/remake_list/get_art_count_loop
""")

	# /core/remake_list/main
	write_function(f"{path}/core/remake_list/main", f"""
# Get the number of pixel arts for the game
data modify storage switch:maps block_party set value []
execute positioned 110008 248 110008 run function {path}/core/remake_list/get_art_count_loop

# Create a new list with randomized order
data modify storage switch:temp new set value []
function {path}/core/remake_list/shuffle

# Apply new list
data modify storage switch:maps block_party set from storage switch:temp new
""")

	# /core/remake_list/move_index  (macro function)
	write_function(f"{path}/core/remake_list/move_index", """
$data modify storage switch:temp new append from storage switch:maps block_party[$(index)]
$data remove storage switch:maps block_party[$(index)]
""")

	# /core/remake_list/shuffle
	write_function(f"{path}/core/remake_list/shuffle", f"""
# Get random
scoreboard players operation #modulo_rand switch.data = #art_count switch.data
scoreboard players remove #art_count switch.data 1
function switch:utils/get_random/main

# Move from first list to new
data modify storage switch:temp input set value {{index:0}}
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data
function {path}/core/remake_list/move_index with storage switch:temp input

# Continue loop
execute if data storage switch:maps block_party[0] run function {path}/core/remake_list/shuffle
""")
