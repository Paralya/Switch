
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "glassrunner"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	# glassrunner calls are positioned at 3000 128 3000
	write_modes_calls(mode, context="positioned 3000 128 3000 ")
	write_translations()


	# /arrow_explosion
	write_function(f"{path}/arrow_explosion", f"""
function {ns}:modes/glassrunner/destroy_glass_around

summon creeper ~ ~ ~ {{DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}}
summon creeper ~ ~ ~ {{DeathLootTable:"null",ExplosionRadius:5b,Fuse:1,ignited:true,Invulnerable:true}}
summon creeper ~ ~ ~ {{DeathLootTable:"null",ExplosionRadius:5b,Fuse:2,ignited:true,Invulnerable:true}}
kill @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
clear @s
# Ici : dans tous les cas, tuer la personne qui join
function {ns}:modes/glassrunner/death/death
effect give @s saturation 100 1 true
effect give @s regeneration 1 255 true
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #glassrunner_seconds {ns}.data 1

execute positioned 2997 128 2997 as @a[tag=!detached,dx=5,dy=3,dz=5] run function {ns}:modes/glassrunner/ctp/center/adding_timer
execute positioned 2997 128 2997 unless entity @a[tag=!detached,dx=5,dy=3,dz=5] run function {ns}:modes/glassrunner/ctp/center/reset

execute if score #glassrunner.ctp.center.red.timer {ns}.data matches 1.. run function {ns}:modes/glassrunner/ctp/center/red
execute if score #glassrunner.ctp.center.blue.timer {ns}.data matches 1.. run function {ns}:modes/glassrunner/ctp/center/blue

execute positioned 2924 128 3074 as @a[tag=!detached,dx=2,dy=3,dz=2] run function {ns}:modes/glassrunner/ctp/side1/adding_timer
execute positioned 2924 128 3074 unless entity @a[tag=!detached,dx=2,dy=3,dz=2] run function {ns}:modes/glassrunner/ctp/side1/reset

execute if score #glassrunner.ctp.side1.red.timer {ns}.data matches 1.. run function {ns}:modes/glassrunner/ctp/side1/red
execute if score #glassrunner.ctp.side1.blue.timer {ns}.data matches 1.. run function {ns}:modes/glassrunner/ctp/side1/blue

execute positioned 3074 128 2924 as @a[tag=!detached,dx=2,dy=3,dz=2] run function {ns}:modes/glassrunner/ctp/side2/adding_timer
execute positioned 3074 128 2924 unless entity @a[tag=!detached,dx=2,dy=3,dz=2] run function {ns}:modes/glassrunner/ctp/side2/reset

execute if score #glassrunner.ctp.side2.red.timer {ns}.data matches 1.. run function {ns}:modes/glassrunner/ctp/side2/red
execute if score #glassrunner.ctp.side2.blue.timer {ns}.data matches 1.. run function {ns}:modes/glassrunner/ctp/side2/blue

# Update scoreboard
data modify storage {ns}:main input set value {{red:0,blue:0}}
execute store result storage {ns}:main input.red int 1 run scoreboard players get #glassrunner.points.red {ns}.data
execute store result storage {ns}:main input.blue int 1 run scoreboard players get #glassrunner.points.blue {ns}.data
function {ns}:modes/glassrunner/ctp/update_sb with storage {ns}:main input
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
## Item custom
#define storage {ns}:glassrunner

## Teams
team add {ns}.glassrunner.red {{"text":"[Red]","color":"red"}}
team modify {ns}.glassrunner.red color red
team modify {ns}.glassrunner.red friendlyFire false
team add {ns}.glassrunner.blue {{"text":"[Blue]","color":"blue"}}
team modify {ns}.glassrunner.blue color blue
team modify {ns}.glassrunner.blue friendlyFire false

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] jump_boost infinite 3 true
time set 6000

## Téléportation des joueurs dans quatres coins + give d'items
function {ns}:utils/choose_map_for {{id:"glassrunner", maps:["glassrunner"]}}
scoreboard players set #count {ns}.data 0
execute as @a[tag=!detached,sort=random] at @s run function {ns}:modes/glassrunner/start/team
execute as @a[tag=!detached] at @s run function {ns}:modes/glassrunner/death/death

execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {ns}:modes/glassrunner/translations/start

scoreboard players set #process_end {ns}.data 0
scoreboard players set #glassrunner_ticks {ns}.data 0
scoreboard players set #glassrunner_seconds {ns}.data -10

scoreboard players set #glassrunner_point_to_win {ns}.data 32

scoreboard objectives add {ns}.glassrunner.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add {ns}.glassrunner.deathCount deathCount
scoreboard objectives add {ns}.glassrunner.money_maker dummy
scoreboard objectives add {ns}.glassrunner.apocalypse dummy
scoreboard objectives add {ns}.glassrunner.turtle_helmet dummy
scoreboard objectives add {ns}.glassrunner.elytra dummy

scoreboard objectives add {ns}.glassrunner.money dummy
scoreboard objectives setdisplay list {ns}.glassrunner.money
scoreboard players add @a[tag=!detached] {ns}.glassrunner.money 0

scoreboard objectives add {ns}.glassrunner.display dummy [{{"text":"Glass","color":"red"}},{{"text":"Runner","color":"blue"}}]
scoreboard objectives setdisplay sidebar {ns}.glassrunner.display
scoreboard players set §O§r {ns}.glassrunner.display 2
scoreboard players set §P§R§r {ns}.glassrunner.display 1
scoreboard players set §P§B§r {ns}.glassrunner.display 0

team add {ns}.glassrunner.objective {{"text":"Objective: 32 points","color":"gray"}}
team add {ns}.glassrunner.p_red {{"text":"[P Red]","color":"red"}}
team add {ns}.glassrunner.p_blue {{"text":"[P Blue]","color":"blue"}}
team join {ns}.glassrunner.objective §O§r
team join {ns}.glassrunner.p_red §P§R§r
team join {ns}.glassrunner.p_blue §P§B§r

scoreboard players set #glassrunner.points.red {ns}.data 0
scoreboard players set #glassrunner.points.blue {ns}.data 0

execute in {ns}:game run summon text_display 3000 110 3000 {{Tags:["{ns}.glassrunner.money_maker"], text:{{"text":"3 seconds => 2 money","color":"gold","italic":false}}, billboard:"vertical", alignment:"center"}}
execute in {ns}:game run summon text_display 3084 131 3084 {{Tags:["{ns}.glassrunner.money_maker"], text:{{"text":"3 seconds => 2 money","color":"gold","italic":false}}, billboard:"vertical", alignment:"center"}}
execute in {ns}:game run summon text_display 2916 131 2916 {{Tags:["{ns}.glassrunner.money_maker"], text:{{"text":"3 seconds => 2 money","color":"gold","italic":false}}, billboard:"vertical", alignment:"center"}}
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.glassrunner.money
scoreboard objectives remove {ns}.glassrunner.deathCount
scoreboard objectives remove {ns}.glassrunner.use_snowball
scoreboard objectives remove {ns}.glassrunner.display
team remove {ns}.glassrunner.blue
team remove {ns}.glassrunner.red
team remove {ns}.glassrunner.p_red
team remove {ns}.glassrunner.p_blue
scoreboard players set #glassrunner.points.red {ns}.data 0
scoreboard players set #glassrunner.points.blue {ns}.data 0

kill @e[tag={ns}.glassrunner.money_maker]
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #glassrunner_ticks {ns}.data 1

function {ns}:utils/on_death_run_function {{function:"{ns}:modes/glassrunner/death/death"}}

execute if score #glassrunner.apocalypse {ns}.data matches 1 run function {ns}:modes/glassrunner/apocalypse/start
execute if score #glassrunner.apocalypse {ns}.data matches 1.. run scoreboard players add #glassrunner.apocalypse {ns}.data 1
execute if score #glassrunner.apocalypse {ns}.data matches 5 run function {ns}:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse {ns}.data matches 10 run function {ns}:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse {ns}.data matches 15 run function {ns}:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse {ns}.data matches 20 run function {ns}:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse {ns}.data matches 25 run function {ns}:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse {ns}.data matches 30 run function {ns}:modes/glassrunner/apocalypse/tick

execute if score #glassrunner.apocalypse {ns}.data matches 30.. run function {ns}:modes/glassrunner/apocalypse/end

execute as @a[tag=!detached] at @s run function {ns}:modes/glassrunner/tick_player
execute as @e[tag={ns}.glassrunner.glass_bridge,distance=..150] at @s run function {ns}:modes/glassrunner/tick_glass_bridge
execute as @e[type=arrow,nbt={{inBlockState:{{}}}},distance=..200] at @s run function {ns}:modes/glassrunner/arrow_explosion

fill 3003 128 3003 2997 132 2997 air replace #{ns}:glassrunner/glass

fill 3073 128 3073 3077 131 3077 air replace #{ns}:glassrunner/glass
fill 2927 128 2927 2923 131 2923 air replace #{ns}:glassrunner/glass

fill 3074 128 2924 3076 131 2926 air replace #{ns}:glassrunner/glass
fill 2924 131 3076 2926 128 3074 air replace #{ns}:glassrunner/glass

execute as @a[predicate={ns}:holding_fireball_wand,scores={{{ns}.right_click=1..,{ns}.glassrunner.money=15..}}] at @s run function {ns}:modes/glassrunner/fireball/use
execute as @e[tag={ns}.glassrunner.fireball] at @s run function {ns}:modes/glassrunner/fireball/explosion

execute as @e[tag={ns}.glassrunner.money_maker] at @s run function {ns}:modes/glassrunner/money_maker/tick
execute as @a[scores={{{ns}.glassrunner.money_maker=60..}}] run function {ns}:modes/glassrunner/money_maker/add_money

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #glassrunner_seconds {ns}.data matches 3600.. if score #process_end {ns}.data matches 0 run function {ns}:modes/glassrunner/end/null
execute if score #glassrunner.points.red {ns}.data >= #glassrunner_point_to_win {ns}.data if score #process_end {ns}.data matches 0 run function {ns}:modes/glassrunner/end/red
execute if score #glassrunner.points.blue {ns}.data >= #glassrunner_point_to_win {ns}.data if score #process_end {ns}.data matches 0 run function {ns}:modes/glassrunner/end/blue

execute if score #process_end {ns}.data matches 1.. run function {ns}:modes/glassrunner/end/process_end
""")

	# /tick_glass_bridge
	write_function(f"{path}/tick_glass_bridge", f"""
# Increase the snowball use counter
scoreboard players add @s {ns}.glassrunner.use_snowball 1
execute if entity @s[y=0,dy=70] run return 0

# Normal snowball
execute if score @s {ns}.glassrunner.use_snowball matches 5.. if entity @s[tag={ns}.glassrunner.glass_bridge.red] facing entity @p[team={ns}.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 red_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.use_snowball matches 5.. if entity @s[tag={ns}.glassrunner.glass_bridge.blue] facing entity @p[team={ns}.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 blue_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.use_snowball matches 5.. if entity @s[tag={ns}.glassrunner.glass_bridge.red] facing entity @p[team={ns}.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 pink_stained_glass replace air
execute if score @s {ns}.glassrunner.use_snowball matches 5.. if entity @s[tag={ns}.glassrunner.glass_bridge.blue] facing entity @p[team={ns}.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 light_blue_stained_glass replace air

# Renforced snowball
execute if score @s {ns}.glassrunner.use_snowball matches 5.. if entity @s[tag={ns}.glassrunner.renforced_glass_bridge.red] facing entity @p[team={ns}.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.8 ~-2.3 ~-0.8 ~0.8 ~-2.8 ~0.8 red_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.use_snowball matches 5.. if entity @s[tag={ns}.glassrunner.renforced_glass_bridge.blue] facing entity @p[team={ns}.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.8 ~-2.3 ~-0.8 ~0.8 ~-2.8 ~0.8 blue_stained_glass replace #{ns}:glassrunner/tier_1_air

execute if score @s {ns}.glassrunner.use_snowball matches 200.. run kill @s
""")

	# /tick_player
	write_function(f"{path}/tick_player", f"""
execute if score @s {ns}.glassrunner.use_snowball matches 1.. run function {ns}:modes/glassrunner/snowball/use

execute if predicate {ns}:holding_destroying_crossbow run item modify entity @s weapon.mainhand {ns}:charged
execute if predicate {ns}:holding_destroying_crossbow run effect give @s slowness 1 3 true

data remove storage {ns}:glassrunner temp.Inventory
data modify storage {ns}:glassrunner temp.Inventory set from entity @s Inventory

execute unless data storage {ns}:glassrunner temp.Inventory[{{Slot:13b}}] run function {ns}:modes/glassrunner/shop/turtle
execute unless data storage {ns}:glassrunner temp.Inventory[{{Slot:19b}}] run function {ns}:modes/glassrunner/shop/snowball
execute unless data storage {ns}:glassrunner temp.Inventory[{{Slot:21b}}] run function {ns}:modes/glassrunner/shop/arrow
execute unless data storage {ns}:glassrunner temp.Inventory[{{Slot:23b}}] run function {ns}:modes/glassrunner/shop/igloo
execute unless data storage {ns}:glassrunner temp.Inventory[{{Slot:25b}}] run function {ns}:modes/glassrunner/shop/apocalypse
execute unless data storage {ns}:glassrunner temp.Inventory[{{Slot:31b}}] run function {ns}:modes/glassrunner/shop/elytra

execute if score @s {ns}.glassrunner.apocalypse matches 1.. run function {ns}:modes/glassrunner/shop/apocalypse_player

item replace entity @s[scores={{{ns}.glassrunner.turtle_helmet=1..}}] armor.head with turtle_helmet[enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},attribute_modifiers=[{{type:"knockback_resistance",id:"{ns}.knockback_resistance",amount:1,operation:"add_value"}}]]
item replace entity @s[scores={{{ns}.glassrunner.turtle_helmet=..1}}] armor.head with air

scoreboard players remove @s[scores={{{ns}.glassrunner.turtle_helmet=1..}}] {ns}.glassrunner.turtle_helmet 1

execute if data entity @s {{OnGround:true}} if predicate {ns}:glassrunner/in_elytra if entity @s[team={ns}.glassrunner.blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=255]
execute if data entity @s {{OnGround:true}} if predicate {ns}:glassrunner/in_elytra if entity @s[team={ns}.glassrunner.red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=16711680]

execute if score @s {ns}.glassrunner.elytra matches 2 run item replace entity @s armor.chest with elytra[unbreakable={{}}]
scoreboard players remove @s[scores={{{ns}.glassrunner.elytra=1..}}] {ns}.glassrunner.elytra 1

execute if entity @s[y=0,dy=70,gamemode=adventure] run kill @s
""")

	# /destroy_glass_around
	write_function(f"{path}/destroy_glass_around", f"""
# Tier 1 to Air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #{ns}:glassrunner/tier_1

fill ~-1 ~ ~2 ~1 ~ ~2 air replace #{ns}:glassrunner/tier_1
fill ~-1 ~ ~-2 ~1 ~ ~-2 air replace #{ns}:glassrunner/tier_1

fill ~-1 ~2 ~ ~1 ~2 ~ air replace #{ns}:glassrunner/tier_1
fill ~-1 ~-2 ~ ~1 ~-2 ~ air replace #{ns}:glassrunner/tier_1

fill ~ ~-1 ~2 ~ ~1 ~2 air replace #{ns}:glassrunner/tier_1
fill ~ ~-1 ~-2 ~ ~1 ~-2 air replace #{ns}:glassrunner/tier_1

fill ~2 ~-1 ~ ~2 ~1 ~ air replace #{ns}:glassrunner/tier_1
fill ~-2 ~-1 ~ ~-2 ~1 ~ air replace #{ns}:glassrunner/tier_1

fill ~2 ~ ~-1 ~2 ~ ~1 air replace #{ns}:glassrunner/tier_1
fill ~-2 ~ ~-1 ~-2 ~ ~1 air replace #{ns}:glassrunner/tier_1

fill ~ ~2 ~-1 ~ ~2 ~1 air replace #{ns}:glassrunner/tier_1
fill ~ ~-2 ~-1 ~ ~-2 ~1 air replace #{ns}:glassrunner/tier_1

# Tier2 to Tier1 RED
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 pink_stained_glass replace red_stained_glass

fill ~-1 ~ ~2 ~1 ~ ~2 pink_stained_glass replace red_stained_glass
fill ~-1 ~ ~-2 ~1 ~ ~-2 pink_stained_glass replace red_stained_glass

fill ~-1 ~2 ~ ~1 ~2 ~ pink_stained_glass replace red_stained_glass
fill ~-1 ~-2 ~ ~1 ~-2 ~ pink_stained_glass replace red_stained_glass

fill ~ ~-1 ~2 ~ ~1 ~2 pink_stained_glass replace red_stained_glass
fill ~ ~-1 ~-2 ~ ~1 ~-2 pink_stained_glass replace red_stained_glass

fill ~2 ~-1 ~ ~2 ~1 ~ pink_stained_glass replace red_stained_glass
fill ~-2 ~-1 ~ ~-2 ~1 ~ pink_stained_glass replace red_stained_glass

fill ~2 ~ ~-1 ~2 ~ ~1 pink_stained_glass replace red_stained_glass
fill ~-2 ~ ~-1 ~-2 ~ ~1 pink_stained_glass replace red_stained_glass

fill ~ ~2 ~-1 ~ ~2 ~1 pink_stained_glass replace red_stained_glass
fill ~ ~-2 ~-1 ~ ~-2 ~1 pink_stained_glass replace red_stained_glass

# Tier2 to Tier1 Blue
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light_blue_stained_glass replace blue_stained_glass

fill ~-1 ~ ~2 ~1 ~ ~2 light_blue_stained_glass replace blue_stained_glass
fill ~-1 ~ ~-2 ~1 ~ ~-2 light_blue_stained_glass replace blue_stained_glass

fill ~-1 ~2 ~ ~1 ~2 ~ light_blue_stained_glass replace blue_stained_glass
fill ~-1 ~-2 ~ ~1 ~-2 ~ light_blue_stained_glass replace blue_stained_glass

fill ~ ~-1 ~2 ~ ~1 ~2 light_blue_stained_glass replace blue_stained_glass
fill ~ ~-1 ~-2 ~ ~1 ~-2 light_blue_stained_glass replace blue_stained_glass

fill ~2 ~-1 ~ ~2 ~1 ~ light_blue_stained_glass replace blue_stained_glass
fill ~-2 ~-1 ~ ~-2 ~1 ~ light_blue_stained_glass replace blue_stained_glass

fill ~2 ~ ~-1 ~2 ~ ~1 light_blue_stained_glass replace blue_stained_glass
fill ~-2 ~ ~-1 ~-2 ~ ~1 light_blue_stained_glass replace blue_stained_glass

fill ~ ~2 ~-1 ~ ~2 ~1 light_blue_stained_glass replace blue_stained_glass
fill ~ ~-2 ~-1 ~ ~-2 ~1 light_blue_stained_glass replace blue_stained_glass
""")

	# /start/team
	write_function(f"{path}/start/team", f"""
execute if score #count {ns}.data matches 0 run team join {ns}.glassrunner.red @s
execute if score #count {ns}.data matches 1 run team join {ns}.glassrunner.blue @s

function {ns}:modes/glassrunner/death/death

scoreboard players add #count {ns}.data 1
scoreboard players operation #count {ns}.data %= #2 {ns}.data
""")

	# /apocalypse/end
	write_function(f"{path}/apocalypse/end", f"""
time set 6000
scoreboard players set #glassrunner.apocalypse {ns}.data 0
""")

	# /apocalypse/start (translation ref rewritten)
	write_function(f"{path}/apocalypse/start", f"""
time set 18000
function {ns}:modes/glassrunner/translations/apocalypse_start
""")

	# /apocalypse/tick
	write_function(f"{path}/apocalypse/tick", f"""
execute as @a[tag=!detached,gamemode=!spectator] at @s run function {ns}:modes/glassrunner/apocalypse/tick_player

summon lightning_bolt ~100 ~ ~100
summon lightning_bolt ~-100 ~ ~-100
summon lightning_bolt ~-100 ~ ~100
summon lightning_bolt ~100 ~ ~-100
""")

	# /apocalypse/tick_player
	write_function(f"{path}/apocalypse/tick_player", f"""
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #{ns}:glassrunner/glass
execute align xyz run summon creeper ~ ~2 ~ {{DeathLootTable:"null",ExplosionRadius:10b,Fuse:0,ignited:true,Invulnerable:true}}
""")

	# /money_maker/add_money
	write_function(f"{path}/money_maker/add_money", f"""
scoreboard players add @s {ns}.glassrunner.money 2
scoreboard players set @s {ns}.glassrunner.money_maker 0
xp add @s 2 levels
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
""")

	# /money_maker/tick
	write_function(f"{path}/money_maker/tick", f"""
execute positioned ~ ~-2 ~ as @a[distance=..3] at @s if block ~ ~-1 ~ gold_block run scoreboard players add @s {ns}.glassrunner.money_maker 1
""")

	# /snowball/repart
	write_function(f"{path}/snowball/repart", f"""
tag @s add {ns}.glassrunner.snowball

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.renforced_glass_bridge_red run tag @s add {ns}.glassrunner.renforced_glass_bridge.red
execute if data entity @s Item.components."minecraft:custom_data".glassrunner.renforced_glass_bridge_blue run tag @s add {ns}.glassrunner.renforced_glass_bridge.blue

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge_red run tag @s add {ns}.glassrunner.glass_bridge.red
execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge_blue run tag @s add {ns}.glassrunner.glass_bridge.blue

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge run tag @s add {ns}.glassrunner.glass_bridge
""")

	# /snowball/use
	write_function(f"{path}/snowball/use", f"""
tag @s add {ns}.glassrunner.owner
execute as @e[type=minecraft:snowball,distance=..5,tag=!{ns}.glassrunner.snowball] run function {ns}:modes/glassrunner/snowball/repart
tag @s remove {ns}.glassrunner.owner

scoreboard players remove @s {ns}.glassrunner.use_snowball 1

execute positioned 2925 129 2925 if entity @s[team={ns}.glassrunner.red,distance=..3] run loot give @s loot {ns}:glassrunner/snowball_bridge_red
execute positioned 3075 129 3075 if entity @s[team={ns}.glassrunner.blue,distance=..3] run loot give @s loot {ns}:glassrunner/snowball_bridge_blue
""")

	# /fireball/explosion
	write_function(f"{path}/fireball/explosion", f"""
particle minecraft:flame ~ ~ ~ 1 1 1 .1 5

fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #{ns}:glassrunner/glass_air

scoreboard players add @s {ns}.data 1
kill @s[scores={{{ns}.data=500..}}]
""")

	# /fireball/use (translation ref rewritten)
	write_function(f"{path}/fireball/use", f"""
execute positioned ~ ~1.8 ~ run summon fireball ^ ^ ^1.5 {{Tags:["{ns}.glassrunner.fireball"]}}
scoreboard players remove @s {ns}.glassrunner.money 15
xp add @s -15 levels
function {ns}:modes/glassrunner/translations/fireball_use
""")

	# /ctp/update_sb
	write_function(f"{path}/ctp/update_sb", f"""
$team modify {ns}.glassrunner.p_red suffix [{{"text": "Red: ","color":"red"}},{{"text":"$(red)","color":"dark_red"}},{{"text":" points"}}]
$team modify {ns}.glassrunner.p_blue suffix [{{"text": "Blue: ","color":"blue"}},{{"text":"$(blue)","color":"dark_blue"}},{{"text":" points"}}]
""")

	# /ctp/<loc>/capture_<color> (per capture point: reset its timer, award points + money + xp + sound)
	for loc, pts in (("center", 2), ("side1", 1), ("side2", 1)):
		for color in ("blue", "red"):
			write_function(f"{path}/ctp/{loc}/capture_{color}", f"""
scoreboard players set #glassrunner.ctp.{loc}.{color}.timer {ns}.data 0

scoreboard players add #glassrunner.points.{color} {ns}.data {pts}
scoreboard players add @a[tag=!detached,team={ns}.glassrunner.{color}] {ns}.glassrunner.money 2
xp add @a[tag=!detached,team={ns}.glassrunner.{color}] 2 levels

execute as @a[tag=!detached,team={ns}.glassrunner.{color}] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
""")

	# /ctp/<loc>/{adding_timer,blue,red,reset} — data-driven capture-point logic per location:
	# (detect-box, fill-area, staged template thresholds, and per-team template prefix + place coords)
	CTP: dict[str, tuple[str, str, list[tuple[int, int]], tuple[str, str], tuple[str, str]]] = {
		"center": ("dx=5,dy=3,dz=5", "2997 127 2997 3003 127 3003",
			[(1, 2), (3, 4), (5, 6), (7, 8), (9, 10), (11, 12), (13, 14)],
			("center_blue", "2997 127 2997"), ("center_red", "2997 127 2997")),
		"side1": ("dx=2,dy=3,dz=2", "2926 127 3074 2924 127 3076",
			[(1, 3), (4, 6), (7, 9), (10, 12), (13, 15)],
			("side1_blue", "2926 127 3076 180"), ("side1_red", "2924 127 3074")),
		"side2": ("dx=2,dy=3,dz=2", "3074 127 2926 3076 127 2924",
			[(1, 3), (4, 6), (7, 9), (10, 12), (13, 15)],
			("side1_blue", "3074 127 2924"), ("side1_red", "3074 127 2924 180")),
	}
	for loc, (detect, fill, stages, blue, red) in CTP.items():
		write_function(f"{path}/ctp/{loc}/adding_timer", f"""
execute if entity @s[team={ns}.glassrunner.red] run scoreboard players add #glassrunner.ctp.{loc}.red.timer {ns}.data 1
execute if entity @s[team={ns}.glassrunner.blue] run scoreboard players add #glassrunner.ctp.{loc}.blue.timer {ns}.data 1

execute store success score #temp {ns}.data if entity @s[team={ns}.glassrunner.red] if entity @a[tag=!detached,{detect},team={ns}.glassrunner.blue] run scoreboard players set #glassrunner.ctp.{loc}.red.timer {ns}.data 0
execute store success score #temp2 {ns}.data if entity @s[team={ns}.glassrunner.blue] if entity @a[tag=!detached,{detect},team={ns}.glassrunner.red] run scoreboard players set #glassrunner.ctp.{loc}.blue.timer {ns}.data 0

execute if score #temp {ns}.data matches 1 run fill {fill} minecraft:white_concrete
execute if score #temp2 {ns}.data matches 1 run fill {fill} minecraft:white_concrete
""")
		for color, (tpl, place) in (("blue", blue), ("red", red)):
			stage_lines: str = "\n".join(
				f"execute if score #glassrunner.ctp.{loc}.{color}.timer {ns}.data matches {lo}..{hi} run place template {ns}:glassrunner/{tpl}/{i} {place}"
				for i, (lo, hi) in enumerate(stages, start=1)
			)
			write_function(f"{path}/ctp/{loc}/{color}", f"""
{stage_lines}
execute if score #glassrunner.ctp.{loc}.{color}.timer {ns}.data matches 15.. run function {ns}:modes/glassrunner/ctp/{loc}/capture_{color}
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")
		write_function(f"{path}/ctp/{loc}/reset", f"""
scoreboard players set #glassrunner.ctp.{loc}.red.timer {ns}.data 0
scoreboard players set #glassrunner.ctp.{loc}.blue.timer {ns}.data 0
fill {fill} minecraft:white_concrete
""")

	# /death/blue
	write_function(f"{path}/death/blue", f"""
item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=255]
item replace entity @s armor.legs with leather_leggings[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=255]
item replace entity @s armor.feet with leather_boots[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=255]

loot give @s loot {ns}:glassrunner/snowball_bridge_blue_x8
""")

	# /death/both
	write_function(f"{path}/death/both", f"""
scoreboard players add @s {ns}.glassrunner.turtle_helmet 50

execute unless data entity @s Inventory[{{components:{{"minecraft:custom_data":{{ctc:{{id:"glassrunner:bow"}}}}}}}}] run loot give @s loot {ns}:glassrunner/bow
execute unless data entity @s Inventory[{{components:{{"minecraft:custom_data":{{ctc:{{id:"glassrunner:fireball_wand"}}}}}}}}] run loot give @s loot {ns}:glassrunner/fireball_wand
give @s arrow 4

function {ns}:modes/glassrunner/shop/reset_item
""")

	# /death/death
	write_function(f"{path}/death/death", f"""
clear @s snowball
clear @s arrow

effect clear @s

execute if entity @s[team=!{ns}.glassrunner.red,team=!{ns}.glassrunner.blue] run function {ns}:modes/glassrunner/death/random
execute if entity @s[team={ns}.glassrunner.red] run function {ns}:modes/glassrunner/death/red
execute if entity @s[team={ns}.glassrunner.blue] run function {ns}:modes/glassrunner/death/blue

function {ns}:modes/glassrunner/death/both
spreadplayers 2925 2925 0 2 true @s[team={ns}.glassrunner.red]
spreadplayers 3075 3075 0 2 true @s[team={ns}.glassrunner.blue]
execute at @s facing 3000 128 3000 run tp ~ 129 ~
scoreboard players set @s {ns}.glassrunner.deathCount 0

effect give @s resistance infinite 255 true
effect give @s jump_boost infinite 3 true
effect give @s saturation infinite 255 true
effect give @s speed infinite 3 true

gamemode adventure @s
""")

	# /death/random
	write_function(f"{path}/death/random", f"""
execute store result score #nb_red {ns}.data if entity @a[tag=!detached,team={ns}.glassrunner.red]
execute store result score #nb_blue {ns}.data if entity @a[tag=!detached,team={ns}.glassrunner.blue]

execute if score #nb_red {ns}.data > #nb_blue {ns}.data run team join {ns}.glassrunner.blue @s
execute if score #nb_red {ns}.data <= #nb_blue {ns}.data run team join {ns}.glassrunner.red @s
""")

	# /death/red
	write_function(f"{path}/death/red", f"""
item replace entity @s armor.chest with leather_chestplate[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=16711680]
item replace entity @s armor.legs with leather_leggings[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=16711680]
item replace entity @s armor.feet with leather_boots[unbreakable={{}},enchantments={{binding_curse:1,vanishing_curse:1}},tooltip_display={{"hidden_components":["minecraft:enchantments"]}},dyed_color=16711680]
loot give @s loot {ns}:glassrunner/snowball_bridge_red_x8
""")

	# /end/blue (translation ref rewritten)
	write_function(f"{path}/end/blue", f"""
function {ns}:modes/glassrunner/translations/end_blue
scoreboard players set #process_end {ns}.data 1
""")

	# /end/null (translation ref rewritten)
	write_function(f"{path}/end/null", f"""
function {ns}:modes/glassrunner/translations/end_null
scoreboard players set #process_end {ns}.data 1
""")

	# /end/process_end
	write_function(f"{path}/end/process_end", f"""
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..}}] at @s run function {ns}:engine/add_win

execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {ns}:modes/glassrunner/death/death
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200.. run function {ns}:engine/restart
scoreboard players add #process_end {ns}.data 1
""")

	# /end/red (translation ref rewritten)
	write_function(f"{path}/end/red", f"""
function {ns}:modes/glassrunner/translations/end_red
scoreboard players set #process_end {ns}.data 1
""")

	# /shop/apocalypse (translation ref rewritten)
	write_function(f"{path}/shop/apocalypse", f"""
clear @s ghast_tear[custom_data~{{to_clear:true}}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function {ns}:modes/glassrunner/shop/reset_item

execute if score @s {ns}.glassrunner.money matches 25.. if entity @s[team={ns}.glassrunner.red] as @a[team={ns}.glassrunner.blue] run scoreboard players add @s {ns}.glassrunner.apocalypse 10
execute if score @s {ns}.glassrunner.money matches 25.. if entity @s[team={ns}.glassrunner.blue] as @a[team={ns}.glassrunner.red] run scoreboard players add @s {ns}.glassrunner.apocalypse 10

function {ns}:modes/glassrunner/translations/shop_apocalypse

execute if score @s {ns}.glassrunner.money matches 25.. run xp add @s -25 levels
execute if score @s {ns}.glassrunner.money matches 25.. run scoreboard players remove @s {ns}.glassrunner.money 25
""")

	# /shop/apocalypse_player
	write_function(f"{path}/shop/apocalypse_player", f"""
# effect give @s minecraft:levitation 1 80 true
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace #{ns}:glassrunner/glass
execute if score @s {ns}.glassrunner.apocalypse matches ..5 align xyz run summon creeper ~ ~3 ~ {{DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}}
scoreboard players remove @s {ns}.glassrunner.apocalypse 1
""")

	# /shop/arrow (translation ref rewritten)
	write_function(f"{path}/shop/arrow", f"""
clear @s flint[custom_data~{{to_clear:true}}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function {ns}:modes/glassrunner/shop/reset_item

execute if score @s {ns}.glassrunner.money matches 5.. run give @s arrow 5

function {ns}:modes/glassrunner/translations/shop_arrow

execute if score @s {ns}.glassrunner.money matches 5.. run xp add @s -5 levels
execute if score @s {ns}.glassrunner.money matches 5.. run scoreboard players remove @s {ns}.glassrunner.money 5
""")

	# /shop/elytra (translation ref rewritten)
	write_function(f"{path}/shop/elytra", f"""
clear @s elytra[custom_data~{{to_clear:true}}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
#lore  : Prix : 5 levels
function {ns}:modes/glassrunner/shop/reset_item

execute if score @s {ns}.glassrunner.money matches 20.. run effect give @s minecraft:levitation 1 40 true
execute if score @s {ns}.glassrunner.money matches 20.. run scoreboard players set @s {ns}.glassrunner.elytra 20

function {ns}:modes/glassrunner/translations/shop_elytra

execute if score @s {ns}.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s {ns}.glassrunner.money matches 20.. run scoreboard players remove @s {ns}.glassrunner.money 20

""")

	# /shop/igloo (translation ref rewritten)
	write_function(f"{path}/shop/igloo", f"""
clear @s blue_ice[custom_data~{{to_clear:true}}]

function {ns}:modes/glassrunner/shop/reset_item

# Red
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 red_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 red_stained_glass replace #{ns}:glassrunner/tier_1

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 red_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 red_stained_glass replace #{ns}:glassrunner/tier_1

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 red_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 red_stained_glass replace #{ns}:glassrunner/tier_1


execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 pink_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 pink_stained_glass replace #{ns}:glassrunner/tier_1_air

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 pink_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 pink_stained_glass replace #{ns}:glassrunner/tier_1_air

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 pink_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.red] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 pink_stained_glass replace #{ns}:glassrunner/tier_1_air

# Blue
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 blue_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 blue_stained_glass replace #{ns}:glassrunner/tier_1

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 blue_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 blue_stained_glass replace #{ns}:glassrunner/tier_1

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 blue_stained_glass replace #{ns}:glassrunner/tier_1
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 blue_stained_glass replace #{ns}:glassrunner/tier_1


execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 light_blue_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 light_blue_stained_glass replace #{ns}:glassrunner/tier_1_air

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 light_blue_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 light_blue_stained_glass replace #{ns}:glassrunner/tier_1_air

execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 light_blue_stained_glass replace #{ns}:glassrunner/tier_1_air
execute if score @s {ns}.glassrunner.money matches 20.. if entity @s[team={ns}.glassrunner.blue] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 light_blue_stained_glass replace #{ns}:glassrunner/tier_1_air


function {ns}:modes/glassrunner/translations/shop_igloo
execute if score @s {ns}.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s {ns}.glassrunner.money matches 20.. run scoreboard players remove @s {ns}.glassrunner.money 20
""")

	# /shop/reset_item
	write_function(f"{path}/shop/reset_item", """
item replace entity @s inventory.4 with turtle_helmet[item_name={"text":"Casque de tortue","color":"white"},lore=[[{"text":"Met un anti knockback pendant 10 secondes","color":"dark_gray","italic":false}],[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"25 levels","color":"gold"}]],custom_data={to_clear:true}]
item replace entity @s inventory.12 with flint[item_name={"text":"Flèches x5","color":"white"},lore=[[{"text":"Vous ravitaille en flèches !","color":"dark_gray","italic":false}],[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"5 levels","color":"gold"}]],custom_data={to_clear:true}]
item replace entity @s inventory.10 with snow_block[item_name={"text":"Snowball renforcée x5","color":"white"},lore=[[{"text":"Permet de faire des bridges dirrectement en vitre foncée !","color":"dark_gray","italic":false}],[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"8 levels","color":"gold"}]],custom_data={to_clear:true}]
item replace entity @s inventory.14 with blue_ice[item_name={"text":"Igloo","color":"white"},lore=[[{"text":"Pose un igloo à votre emplacement","color":"dark_gray","italic":false}],[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"20 levels","color":"gold"}]],custom_data={to_clear:true}]
item replace entity @s inventory.16 with ghast_tear[item_name={"text":"Apocalypse","color":"white"},lore=[[{"text":"Fais péter toute l'équipe adverse","color":"dark_gray","italic":false}],[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"25 levels","color":"gold"}]],custom_data={to_clear:true}]
item replace entity @s inventory.22 with elytra[item_name={"text":"Elytra booster","color":"white"},lore=[[{"text":"Te propulse en l'air ","color":"dark_gray","italic":false}],[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"25 levels","color":"gold"}]],custom_data={to_clear:true}]
""")

	# /shop/snowball (translation ref rewritten)
	write_function(f"{path}/shop/snowball", f"""
clear @s snow_block[custom_data~{{to_clear:true}}]

# item_name : Snowball renforcée x5
# lore : Permet de faire des bridges dirrectement en vitre foncée !
# lore : Prix : 8 levels
function {ns}:modes/glassrunner/shop/reset_item

execute if score @s[team={ns}.glassrunner.red] {ns}.glassrunner.money matches 8.. run loot give @s loot {ns}:glassrunner/renforced_snowball_bridge_red_x5
execute if score @s[team={ns}.glassrunner.blue] {ns}.glassrunner.money matches 8.. run loot give @s loot {ns}:glassrunner/renforced_snowball_bridge_blue_x5

function {ns}:modes/glassrunner/translations/shop_snowball

execute if score @s {ns}.glassrunner.money matches 8.. run xp add @s -8 levels
execute if score @s {ns}.glassrunner.money matches 8.. run scoreboard players remove @s {ns}.glassrunner.money 8
""")

	# /shop/turtle (translation ref rewritten)
	write_function(f"{path}/shop/turtle", f"""
clear @s turtle_helmet[custom_data~{{to_clear:true}}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function {ns}:modes/glassrunner/shop/reset_item
execute if score @s {ns}.glassrunner.money matches 12.. run scoreboard players add @s {ns}.glassrunner.turtle_helmet 200
function {ns}:modes/glassrunner/translations/shop_turtle

execute if score @s {ns}.glassrunner.money matches 12.. run xp add @s -12 levels
execute if score @s {ns}.glassrunner.money matches 12.. run scoreboard players remove @s {ns}.glassrunner.money 12
""")

