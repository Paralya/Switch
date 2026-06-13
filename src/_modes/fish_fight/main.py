
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "fish_fight"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /axobonus (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/axobonus", """
# Tirage au sort du bonus
execute store result score #random switch.data run random value 0..12

# si le score est 0, on donne un effet de slow falling au détenteur du score axolotl killed
execute if score #random switch.data matches 0 if score #TEAM_FISH switch.data matches 0 run effect give @s slow_falling 25 1 true
execute if score #random switch.data matches 0 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.red] slow_falling 25 1 true
execute if score #random switch.data matches 0 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.blue] slow_falling 25 1 true
execute if score #random switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
execute if score #random switch.data matches 0 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 0 run effect give @s speed 10 0 true


# si le score est 1, on donne un effet de speed au détenteur du score axolotl killed
execute if score #random switch.data matches 1 if score #TEAM_FISH switch.data matches 0 run effect give @s speed 10 1 true
execute if score #random switch.data matches 1 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.red] speed 10 1 true
execute if score #random switch.data matches 1 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.blue] speed 10 1 true
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
execute if score #random switch.data matches 1 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 1 run effect give @s speed 10 0 true

# si le score est 2, on donne 25 blocs au détenteur du score axolotl killed
execute if score #random switch.data matches 2 if score #TEAM_FISH switch.data matches 0 run give @s white_concrete 25
execute if score #random switch.data matches 2 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run give @s red_concrete 25
execute if score #random switch.data matches 2 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run give @s blue_concrete 25
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound entity.item.pickup ambient @s
execute if score #random switch.data matches 2 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 2 run effect give @s speed 10 0 true

# si le score est 3, on augmente son score switch.alive de 1
execute if score #random switch.data matches 3 run scoreboard players add @s[tag=!detached,scores={switch.temp.axolotl_killed=1,switch.alive=..2}] switch.alive 1
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #random switch.data matches 3 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 3 run effect give @s speed 10 0 true

# si le score est 4, on donne un effet de glowing et weakness à tous les joueurs sans le donner au détenteur du score axolotl killed
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] glowing 10 0 true
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] weakness 10 0 true
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[gamemode=!spectator,team=switch.temp.blue] glowing 10 0 true
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[gamemode=!spectator,team=switch.temp.red] weakness 10 0 true
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s
execute if score #random switch.data matches 4 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 4 run effect give @s speed 10 0 true

# si le score est 5, on donne un effet de force au détenteur du score axolotl killed
execute if score #random switch.data matches 5 run effect give @s strength 20 0 true
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
execute if score #random switch.data matches 5 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 5 run effect give @s speed 10 0 true

# si le score est 6, on donne 10 ender pearls au détenteur du score axolotl killed
execute if score #random switch.data matches 6 run give @s ender_pearl 10
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound entity.enderman.teleport ambient @s
execute if score #random switch.data matches 6 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 6 run effect give @s speed 10 0 true

# si le score est 7, on summon pleins d'axolotls
execute if score #random switch.data matches 7 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 130 151026 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 130 151026 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 130 151026 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}

execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155993 152 156013 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155993 152 156013 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155983 164 155995 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155983 164 155995 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.axolotl.hurt ambient @s
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.axolotl.splash ambient @s
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #random switch.data matches 7 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 7 run effect give @s speed 10 0 true

# si le score est 8, on summon des puffer fish
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151040 124 151032 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151015 124 151020 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}

execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Bubulle","color":"green","bold":true}}


execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound entity.zombie.ambient ambient @s
execute if score #random switch.data matches 8 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 8 run effect give @s speed 10 0 true

# si le score est 9, on donne un effet temporaire de slowness à joueurs
execute if score #random switch.data matches 9 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] slowness 15 1 true
execute if score #random switch.data matches 9 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.blue,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] slowness 15 1 true
execute if score #random switch.data matches 9 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.red,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] slowness 15 1 true
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound entity.pig.ambient ambient @s
execute if score #random switch.data matches 9 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 9 run effect give @s speed 10 0 true

# si le score est 10, on donne un plastron anti kb
execute if score #random switch.data matches 10 run scoreboard players set @s switch.temp.cooldown 100
execute if score #random switch.data matches 10 run item replace entity @s armor.chest with chainmail_chestplate[enchantments={binding_curse:1},attribute_modifiers=[{type:"knockback_resistance",slot:"chest",id:"switch.invulnerable",amount:100,operation:"add_value"}]]
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #random switch.data matches 10 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 10 run effect give @s speed 10 0 true

# si le score est 11, on donne un effet de levitation à tous les joueurs
execute if score #random switch.data matches 11 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] levitation 9 0 true
execute if score #random switch.data matches 11 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.blue,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] levitation 9 0 true
execute if score #random switch.data matches 11 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.red,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] levitation 9 0 true
execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound entity.ender_dragon.growl ambient @s
execute if score #random switch.data matches 11 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 11 run effect give @s speed 10 0 true

#si le score est 12, on donne un effet de jump boost à l'équipe du tueur
execute if score #random switch.data matches 12 if score #TEAM_FISH switch.data matches 0 run effect give @s jump_boost 8 1 true
execute if score #random switch.data matches 12 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.red] jump_boost 8 1 true
execute if score #random switch.data matches 12 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.blue] jump_boost 8 1 true
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
function switch:modes/fish_fight/translations/axobonus
execute if score #random switch.data matches 12 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 12 run effect give @s speed 10 0 true


# on reset le score d'axolo_killed
scoreboard players set @s switch.temp.axolotl_killed 0
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={{switch.alive=1..}}] run function {path}/teams_tp/tp_give


execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s



scoreboard players set @s switch.temp.deathCooldown 0
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Clear old items
clear @s white_concrete
clear @s red_concrete
clear @s blue_concrete
clear @s ender_pearl
clear @s shears 1

# Effects
effect give @s instant_health 4 5 true 

# replace tropical fish knockback 1 rename "Fishy Fish"
execute unless items entity @s container.* tropical_fish run give @s tropical_fish[enchantments={"minecraft:knockback":2,"minecraft:sharpness":2},item_name={"text":"Fishy Fish","color":"aqua"}] 42
execute if score #TEAM_FISH switch.data matches 0 run give @s white_concrete 6
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.blue] blue_concrete 6 
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.red] red_concrete 6 
give @s shears 1


# Give ender pearls (but keep the slot they are in)
scoreboard players set #pearls_count switch.data 0
execute if score #pearls_count switch.data matches 0 store result score #pearls_count switch.data if items entity @s container.* ender_pearl
execute if score #pearls_count switch.data matches 0 store result score #pearls_count switch.data if items entity @s weapon.* ender_pearl
execute if score #pearls_count switch.data matches 0 run item replace entity @s hotbar.8 with ender_pearl 6
execute if score #pearls_count switch.data matches 1 run give @s ender_pearl 5
execute if score #pearls_count switch.data matches 2 run give @s ender_pearl 4
execute if score #pearls_count switch.data matches 3 run give @s ender_pearl 3
execute if score #pearls_count switch.data matches 4 run give @s ender_pearl 2
execute if score #pearls_count switch.data matches 5 run give @s ender_pearl 1
""")

	# /give_tnt
	write_function(f"{path}/give_tnt", """
give @s tnt
give @s oak_pressure_plate
""")

	# /joined
	write_function(f"{path}/joined", f"""
scoreboard players reset @s switch.alive
function {path}/death
""")

	# /no_drop
	write_function(f"{path}/no_drop", """
tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=1..}}] at @s run function switch:engine/add_win
function {translations}/process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function {path}/joined
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/second", """
scoreboard players add #fish_fight_seconds switch.data 1


execute if score #fish_fight_seconds switch.data matches 1 as @a[tag=!detached] at @s run function switch:modes/fish_fight/give_items


# spawn axolot
scoreboard players operation #temp switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp switch.data %= #32 switch.data
execute if score #temp switch.data matches 0 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 134 151026 {Glowing:true,CustomNameVisible:true,Health:6f,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155993 152 156013 {Glowing:true,CustomNameVisible:true,Health:6f,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155983 164 155995 {Glowing:true,CustomNameVisible:true,Health:6f,CustomName:{"text":"Axobonus","color":"light_purple","bold":true},active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] minecraft:glowing 4 2 true
execute if score #temp switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.arrow.hit_player ambient @s

scoreboard players operation #temp_2 switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp_2 switch.data %= #6 switch.data
execute if score #fish_fight_seconds switch.data matches ..0 run scoreboard players set #temp_2 switch.data 1
execute if score #temp_2 switch.data matches 0 if score #TEAM_FISH switch.data matches 0 run give @a[tag=!detached] white_concrete 1
execute if score #temp_2 switch.data matches 0 if score #TEAM_FISH switch.data matches 1 run give @a[team=switch.temp.blue] blue_concrete 1 
execute if score #temp_2 switch.data matches 0 if score #TEAM_FISH switch.data matches 1 run give @a[team=switch.temp.red] red_concrete 1

#only one winner en cas d'une team

execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run function switch:modes/fish_fight/teams_tp/only_one_winner
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] run function switch:modes/fish_fight/teams_tp/only_one_winner


#TNT

execute if score #fish_fight_seconds switch.data matches 70 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 70 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 70 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
# tellraw  pour annoncer qu'une tnt a été donnée à des joueurs aléatoires

execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt

# tellraw  pour annoncer qu'une tnt a été donnée à des joueurs aléatoires

# event pufferfish
execute if score #fish_fight_seconds switch.data matches 86 store result score #random switch.data run random value 0..2
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151040 124 151032 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151015 124 151020 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 147 156001 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 146 156028 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 15586 153 156004 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}


# tellraw  pour annoncer qu'une pufferfish a été invoquée


# event pufferfish 2
execute if score #fish_fight_seconds switch.data matches 115 run execute store result score #random switch.data run random value 0..2
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151040 124 151032 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151015 124 151020 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 147 156001 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 146 156028 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 15586 153 156004 {Glowing:true,CustomNameVisible:true,CustomName:{"text":"Poisson mécontent","color":"green","bold":true}}

# tellraw  pour annoncer qu'une pufferfish a été invoquée

# clear items useless
clear @s dirt
clear @s wheat_seeds
clear @s #minecraft:chains
clear @s stone
clear @s podzol
clear @s mycelium
clear @s pufferfish

# Displays
scoreboard players operation #mins switch.data = #fish_fight_seconds switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #fish_fight_seconds switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
function switch:modes/fish_fight/translations/second
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
# TODO : tp les joueurs au début pour teams / conditions de team / only one winner

scoreboard players set @a[tag=!detached] switch.alive 3
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:fall_damage false
execute in switch:game run gamerule minecraft:keep_inventory true

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

function switch:modes/fish_fight/translations/start

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
scoreboard objectives add switch.temp.placed_white minecraft.used:minecraft.white_concrete
scoreboard objectives add switch.temp.placed_blue minecraft.used:minecraft.blue_concrete
scoreboard objectives add switch.temp.placed_red minecraft.used:minecraft.red_concrete

scoreboard players set @a[team=!detached] switch.temp.axolotl_killed 0

scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #fish_fight_seconds switch.data -10
scoreboard players set #fish_fight_ticks switch.data 0
scoreboard players set #process_end switch.data 0

# gamemode survival
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.damages
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.old_x
scoreboard objectives remove switch.temp.old_z
scoreboard objectives remove switch.temp.blocks_run
scoreboard objectives remove switch.temp.axolotl_killed
scoreboard objectives remove switch.temp.kills
scoreboard objectives remove switch.temp.axolotl_killed_const
scoreboard objectives remove switch.temp.deathCooldown
scoreboard objectives remove switch.temp.placed_white
scoreboard objectives remove switch.temp.placed_blue
scoreboard objectives remove switch.temp.placed_red

team remove switch.temp.red
team remove switch.temp.blue
team remove switch.temp.green
team remove switch.temp.yellow

data remove storage switch:temp fish_fight
""")

	# /tick (brace-heavy: plain string)
	write_function(f"{path}/tick", """
scoreboard players add #fish_fight_ticks switch.data 1

# Prevent drop
execute as @e[type=item,tag=!switch.checked] run function switch:modes/fish_fight/no_drop

# Custom Saturation
execute as @a[tag=!detached,gamemode=!spectator] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# Détection si un joueur/axolotl est en mer
execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached,gamemode=survival,scores={switch.alive=1..,switch.temp.cooldown=1..}] at @s if entity @s[y=20,dy=105] run function switch:modes/fish_fight/tp_airdox

execute as @a[scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] run function switch:maps/spread_one_player
function switch:utils/on_death_run_function {function:"switch:modes/fish_fight/death"}
# axolot si map airdox
execute if data storage switch:main {map:"airdox_fish_fight"} as @e[type=axolotl] at @s if entity @s[y=20,dy=105] run function switch:modes/fish_fight/tp_airdox
execute if data storage switch:main {map:"airdox_fish_fight"} as @e[type=ender_pearl] at @s if entity @s[y=20,dy=105] run kill @s


execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached,gamemode=survival] at @s if entity @s[y=20,dy=105] run scoreboard players add @s switch.temp.deathCooldown 1

execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached,gamemode=survival,scores={switch.temp.deathCooldown=60..}] run function switch:modes/fish_fight/death


execute as @a[scores={switch.alive=1..},predicate=switch:in_water,sort=random] run function switch:modes/fish_fight/death
execute as @e[type=axolotl,predicate=switch:in_water] run function switch:maps/spread_one_player


# Détection si un joueur tue un axolotl
execute as @a[tag=!detached,scores={switch.temp.axolotl_killed=1..}] run function switch:modes/fish_fight/axobonus

# Particules
execute at @a[tag=!detached,scores={switch.alive=3}] run particle dust{color:[0.631,0.973,0.867],scale:1} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=2}] run particle dust{color:[1.0,1.0,0.447],scale:1} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=1}] run particle dust{color:[0.996,0.522,0.522],scale:1} ~ ~2.4 ~ .1 .1 .1 0 1

# Cooldown invincibilité
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
execute as @a[scores={switch.temp.cooldown=1..80}] run attribute @s jump_strength base reset
item replace entity @a[scores={switch.temp.cooldown=1}] armor.chest with air

# Placed blocks disappear
function switch:modes/fish_fight/block_disappear/global_tick

## Détection de fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,scores={switch.alive=1..}]
execute if score #fish_fight_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/fish_fight/process_end
execute if score #fish_fight_seconds switch.data matches 600.. run function switch:modes/fish_fight/process_end
""")

	# /tp_airdox
	write_function(f"{path}/tp_airdox", """
execute store result score #tp_random switch.data run random value 1..5
scoreboard players set @s switch.temp.deathCooldown 0

execute if score #tp_random switch.data matches 1 run tp @s 156002 151 155970

execute if score #tp_random switch.data matches 2 run tp @s 156001 150 155976

execute if score #tp_random switch.data matches 3 run tp @s 156010 152 155981

execute if score #tp_random switch.data matches 4 run tp @s 156016 154 155988

execute if score #tp_random switch.data matches 5 run tp @s 156007 153 155989

execute if score #tp_random switch.data matches 6 run tp @s 156010 152 155994

execute if score #tp_random switch.data matches 7 run tp @s 156004 152 155997

execute if score #tp_random switch.data matches 8 run tp @s 156008 151 156001

execute if score #tp_random switch.data matches 9 run tp @s 156001 151 156006

execute if score #tp_random switch.data matches 10 run tp @s 156012 142 156028

execute if score #tp_random switch.data matches 10 run tp @s 156005 142 156025

execute if score #tp_random switch.data matches 11 run tp @s 156008 144 156020

execute if score #tp_random switch.data matches 12 run tp @s 156001 144 156015

execute if score #tp_random switch.data matches 13 run tp @s 156007 144 156007

execute if score #tp_random switch.data matches 14 run tp @s 156008 143 155997

execute if score #tp_random switch.data matches 15 run tp @s 156011 144 156003

execute if score #tp_random switch.data matches 16 run tp @s 155986 151 156005

execute if score #tp_random switch.data matches 17 run tp @s 155986 156 155995

execute if score #tp_random switch.data matches 18 run tp @s 155989 151 155987
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
execute if entity @s[scores={switch.alive=1}] run scoreboard players set #points switch.data 333
execute if entity @s[scores={switch.alive=2}] run scoreboard players set #points switch.data 666
execute if entity @s[scores={switch.alive=3}] run scoreboard players set #points switch.data 1000
function switch:modes/_common/xp_bar/points_at_s
""")

	# /block_disappear/detect_color (macro)
	write_function(f"{path}/block_disappear/detect_color", """
# Replace every concrete to a command block (to spawn a marker)
$fill ~-10 ~-10 ~-10 ~10 ~10 ~10 command_block{Command:"function switch:modes/fish_fight/block_disappear/replace_$(color)",auto:true} replace $(color)_concrete
$scoreboard players reset @s switch.temp.placed_$(color)
""")

	# /block_disappear/global_tick
	write_function(f"{path}/block_disappear/global_tick", """
# Replace every wool to concrete
execute as @e[type=item,nbt={Item:{id:"minecraft:white_wool"}}] run data modify entity @s Item.id set value "minecraft:white_concrete"
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}] run data modify entity @s Item.id set value "minecraft:blue_concrete"
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] run data modify entity @s Item.id set value "minecraft:red_concrete"

# Replace every concrete to a command block (to spawn a marker)
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_white=1..}] at @s run function switch:modes/fish_fight/block_disappear/detect_color {color:"white"}
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_blue=1..}] at @s run function switch:modes/fish_fight/block_disappear/detect_color {color:"blue"}
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_red=1..}] at @s run function switch:modes/fish_fight/block_disappear/detect_color {color:"red"}

# Remove blocks
execute as @e[tag=switch.fish_fight_block] run function switch:modes/fish_fight/block_disappear/marker_tick
""")

	# /block_disappear/marker_tick
	write_function(f"{path}/block_disappear/marker_tick", """
scoreboard players remove @s switch.data 1
execute if score @s switch.data matches ..0 at @s run setblock ~ ~ ~ air destroy
execute if score @s switch.data matches ..0 run kill @e[type=item,sort=nearest,limit=1]
execute if score @s switch.data matches ..0 run kill @s
""")

	# /block_disappear/on_new_marker
	write_function(f"{path}/block_disappear/on_new_marker", """
tag @s add switch.fish_fight_block
scoreboard players set @s switch.data 100
""")

	# /block_disappear/replace_blue
	write_function(f"{path}/block_disappear/replace_blue", f"""
setblock ~ ~ ~ minecraft:blue_wool
execute summon marker run function {path}/block_disappear/on_new_marker
""")

	# /block_disappear/replace_red
	write_function(f"{path}/block_disappear/replace_red", f"""
setblock ~ ~ ~ minecraft:red_wool
execute summon marker run function {path}/block_disappear/on_new_marker
""")

	# /block_disappear/replace_white
	write_function(f"{path}/block_disappear/replace_white", f"""
setblock ~ ~ ~ minecraft:white_wool
execute summon marker run function {path}/block_disappear/on_new_marker
""")

	# /teams_tp/only_one_winner (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/teams_tp/only_one_winner", """
function switch:modes/fish_fight/translations/teams_tp_only_one_winner
playsound entity.zombified_piglin.ambient ambient @s
execute as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win

execute if data storage switch:main {map:"luxio_fish_fight"} as @a[tag=!detached] run function switch:maps/spread_one_player
execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached] run function switch:modes/fish_fight/tp_airdox


effect give @a[tag=!detached,gamemode=!spectator] slowness 4 5 true
team remove switch.temp.red
team remove switch.temp.blue
clear @a[tag=!detached] red_concrete
clear @a[tag=!detached] blue_concrete
scoreboard players set #TEAM_FISH switch.data 0
""")

	# /teams_tp/setup (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/teams_tp/setup", """
function switch:modes/fish_fight/translations/teams_tp_setup

team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false

scoreboard players set #next_role switch.data 0
""")

	# /teams_tp/setup4 (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/teams_tp/setup4", """
function switch:modes/fish_fight/translations/teams_tp_setup4

team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team add switch.temp.yellow {"text":"[Yellow]","color":"yellow"}
team add switch.temp.green {"text":"[Green]","color":"green"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.yellow color yellow
team modify switch.temp.green color green
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
team modify switch.temp.yellow friendlyFire false
team modify switch.temp.green friendlyFire false

scoreboard players set #next_role switch.data 0
""")

	# /teams_tp/teams
	write_function(f"{path}/teams_tp/teams", """
# Répartition en équipes
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0
""")

	# /teams_tp/teams4
	write_function(f"{path}/teams_tp/teams4", """
# Répartition en équipes
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 3 run team join switch.temp.green @s
execute if score #next_role switch.data matches 4 run team join switch.temp.yellow @s
execute if score #next_role switch.data matches 4 run scoreboard players set #next_role switch.data 0
""")

	# /teams_tp/tp_give (brace-heavy: plain string)
	write_function(f"{path}/teams_tp/tp_give", """
execute if data storage switch:main {map:"luxio_fish_fight"} run function switch:maps/spread_one_player
execute if data storage switch:main {map:"airdox_fish_fight"} run function switch:modes/fish_fight/tp_airdox


function switch:modes/fish_fight/xp_bar

scoreboard players set @s switch.temp.cooldown 100
item replace entity @s armor.chest with golden_chestplate[enchantments={binding_curse:1},attribute_modifiers=[{type:"knockback_resistance",slot:"chest",id:"switch.invulnerable",amount:100,operation:"add_value"}]]
attribute @s jump_strength base set 0
effect give @s weakness 4 255 true
effect give @s slowness 3 255 true
effect give @s resistance infinite 0 true

function switch:modes/fish_fight/give_items
""")
