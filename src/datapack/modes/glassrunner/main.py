
# ruff: noqa: E501, W291, W293
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
	write_function(f"{path}/arrow_explosion", """

function switch:modes/glassrunner/destroy_glass_around

summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:1,ignited:true,Invulnerable:true}
summon creeper ~ ~ ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:2,ignited:true,Invulnerable:true}
kill @s
""")

	# /joined
	write_function(f"{path}/joined", """
clear @s
# Ici : dans tous les cas, tuer la personne qui join
function switch:modes/glassrunner/death/death
effect give @s saturation 100 1 true
effect give @s regeneration 1 255 true
""")

	# /second
	write_function(f"{path}/second", """
scoreboard players add #glassrunner_seconds switch.data 1

execute positioned 2997 128 2997 as @a[tag=!detached,dx=5,dy=3,dz=5] run function switch:modes/glassrunner/ctp/center/adding_timer
execute positioned 2997 128 2997 unless entity @a[tag=!detached,dx=5,dy=3,dz=5] run function switch:modes/glassrunner/ctp/center/reset

execute if score #glassrunner.ctp.center.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/center/red
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/center/blue



execute positioned 2924 128 3074 as @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side1/adding_timer
execute positioned 2924 128 3074 unless entity @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side1/reset

execute if score #glassrunner.ctp.side1.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side1/red
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side1/blue



execute positioned 3074 128 2924 as @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side2/adding_timer
execute positioned 3074 128 2924 unless entity @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side2/reset

execute if score #glassrunner.ctp.side2.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side2/red
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side2/blue

# Update scoreboard
data modify storage switch:main input set value {red:0,blue:0}
execute store result storage switch:main input.red int 1 run scoreboard players get #glassrunner.points.red switch.data
execute store result storage switch:main input.blue int 1 run scoreboard players get #glassrunner.points.blue switch.data
function switch:modes/glassrunner/ctp/update_sb with storage switch:main input
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
## Item custom
#define storage switch:glassrunner

## Teams
team add switch.glassrunner.red {"text":"[Red]","color":"red"}
team modify switch.glassrunner.red color red
team modify switch.glassrunner.red friendlyFire false
team add switch.glassrunner.blue {"text":"[Blue]","color":"blue"}
team modify switch.glassrunner.blue color blue
team modify switch.glassrunner.blue friendlyFire false

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] jump_boost infinite 3 true
time set 6000

## Téléportation des joueurs dans quatres coins + give d'items
function switch:utils/choose_map_for {id:"glassrunner", maps:["glassrunner"]}
scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/glassrunner/start/team
execute as @a[tag=!detached] at @s run function switch:modes/glassrunner/death/death


execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:keep_inventory true

function switch:modes/glassrunner/translations/start

scoreboard players set #process_end switch.data 0
scoreboard players set #glassrunner_ticks switch.data 0
scoreboard players set #glassrunner_seconds switch.data -10

scoreboard players set #glassrunner_point_to_win switch.data 32

scoreboard objectives add switch.glassrunner.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add switch.glassrunner.deathCount deathCount
scoreboard objectives add switch.glassrunner.money_maker dummy
scoreboard objectives add switch.glassrunner.apocalypse dummy
scoreboard objectives add switch.glassrunner.turtle_helmet dummy
scoreboard objectives add switch.glassrunner.elytra dummy

scoreboard objectives add switch.glassrunner.money dummy
scoreboard objectives setdisplay list switch.glassrunner.money
scoreboard players add @a[tag=!detached] switch.glassrunner.money 0

scoreboard objectives add switch.glassrunner.display dummy [{"text":"Glass","color":"red"},{"text":"Runner","color":"blue"}]
scoreboard objectives setdisplay sidebar switch.glassrunner.display
scoreboard players set §O§r switch.glassrunner.display 2
scoreboard players set §P§R§r switch.glassrunner.display 1
scoreboard players set §P§B§r switch.glassrunner.display 0

team add switch.glassrunner.objective {"text":"Objective: 32 points","color":"gray"}
team add switch.glassrunner.p_red {"text":"[P Red]","color":"red"}
team add switch.glassrunner.p_blue {"text":"[P Blue]","color":"blue"}
team join switch.glassrunner.objective §O§r
team join switch.glassrunner.p_red §P§R§r
team join switch.glassrunner.p_blue §P§B§r

scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0



execute in switch:game run summon text_display 3000 110 3000 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"gold","italic":false}, billboard:"vertical", alignment:"center"}
execute in switch:game run summon text_display 3084 131 3084 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"gold","italic":false}, billboard:"vertical", alignment:"center"}
execute in switch:game run summon text_display 2916 131 2916 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"gold","italic":false}, billboard:"vertical", alignment:"center"}
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.glassrunner.money
scoreboard objectives remove switch.glassrunner.deathCount
scoreboard objectives remove switch.glassrunner.use_snowball
scoreboard objectives remove switch.glassrunner.display
team remove switch.glassrunner.blue
team remove switch.glassrunner.red
team remove switch.glassrunner.p_red
team remove switch.glassrunner.p_blue
scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0

kill @e[tag=switch.glassrunner.money_maker]
""")

	# /tick
	write_function(f"{path}/tick", """
scoreboard players add #glassrunner_ticks switch.data 1

function switch:utils/on_death_run_function {function:"switch:modes/glassrunner/death/death"}


execute if score #glassrunner.apocalypse switch.data matches 1 run function switch:modes/glassrunner/apocalypse/start
execute if score #glassrunner.apocalypse switch.data matches 1.. run scoreboard players add #glassrunner.apocalypse switch.data 1
execute if score #glassrunner.apocalypse switch.data matches 5 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 10 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 15 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 20 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 25 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 30 run function switch:modes/glassrunner/apocalypse/tick

execute if score #glassrunner.apocalypse switch.data matches 30.. run function switch:modes/glassrunner/apocalypse/end



execute as @a[tag=!detached] at @s run function switch:modes/glassrunner/tick_player

execute as @e[tag=switch.glassrunner.glass_bridge,distance=..150] at @s run function switch:modes/glassrunner/tick_glass_bridge

execute as @e[type=arrow,nbt={inBlockState:{}},distance=..200] at @s run function switch:modes/glassrunner/arrow_explosion

fill 3003 128 3003 2997 132 2997 air replace #switch:glassrunner/glass

fill 3073 128 3073 3077 131 3077 air replace #switch:glassrunner/glass
fill 2927 128 2927 2923 131 2923 air replace #switch:glassrunner/glass

fill 3074 128 2924 3076 131 2926 air replace #switch:glassrunner/glass
fill 2924 131 3076 2926 128 3074 air replace #switch:glassrunner/glass

execute as @a[predicate=switch:holding_fireball_wand,scores={switch.right_click=1..,switch.glassrunner.money=15..}] at @s run function switch:modes/glassrunner/fireball/use
execute as @e[tag=switch.glassrunner.fireball] at @s run function switch:modes/glassrunner/fireball/explosion


execute as @e[tag=switch.glassrunner.money_maker] at @s run function switch:modes/glassrunner/money_maker/tick
execute as @a[scores={switch.glassrunner.money_maker=60..}] run function switch:modes/glassrunner/money_maker/add_money

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #glassrunner_seconds switch.data matches 3600.. if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/null
execute if score #glassrunner.points.red switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/red
execute if score #glassrunner.points.blue switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/blue

execute if score #process_end switch.data matches 1.. run function switch:modes/glassrunner/end/process_end
""")

	# /tick_glass_bridge
	write_function(f"{path}/tick_glass_bridge", """
scoreboard players add @s switch.glassrunner.use_snowball 1


execute if entity @s[y=0,dy=70] run return 0


# Normal snowball


execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.red] facing entity @p[team=switch.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.blue] facing entity @p[team=switch.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 blue_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.red] facing entity @p[team=switch.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 pink_stained_glass replace air
execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.blue] facing entity @p[team=switch.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 light_blue_stained_glass replace air


# Renforced snowball

execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.renforced_glass_bridge.red] facing entity @p[team=switch.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.8 ~-2.3 ~-0.8 ~0.8 ~-2.8 ~0.8 red_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.renforced_glass_bridge.blue] facing entity @p[team=switch.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.8 ~-2.3 ~-0.8 ~0.8 ~-2.8 ~0.8 blue_stained_glass replace #switch:glassrunner/tier_1_air



execute if score @s switch.glassrunner.use_snowball matches 200.. run kill @s
""")

	# /tick_player
	write_function(f"{path}/tick_player", """
execute if score @s switch.glassrunner.use_snowball matches 1.. run function switch:modes/glassrunner/snowball/use

execute if predicate switch:holding_destroying_crossbow run item modify entity @s weapon.mainhand switch:charged
execute if predicate switch:holding_destroying_crossbow run effect give @s slowness 1 3 true



data remove storage switch:glassrunner temp.Inventory
data modify storage switch:glassrunner temp.Inventory set from entity @s Inventory

execute unless data storage switch:glassrunner temp.Inventory[{Slot:13b}] run function switch:modes/glassrunner/shop/turtle

execute unless data storage switch:glassrunner temp.Inventory[{Slot:19b}] run function switch:modes/glassrunner/shop/snowball

execute unless data storage switch:glassrunner temp.Inventory[{Slot:21b}] run function switch:modes/glassrunner/shop/arrow

execute unless data storage switch:glassrunner temp.Inventory[{Slot:23b}] run function switch:modes/glassrunner/shop/igloo

execute unless data storage switch:glassrunner temp.Inventory[{Slot:25b}] run function switch:modes/glassrunner/shop/apocalypse

execute unless data storage switch:glassrunner temp.Inventory[{Slot:31b}] run function switch:modes/glassrunner/shop/elytra


execute if score @s switch.glassrunner.apocalypse matches 1.. run function switch:modes/glassrunner/shop/apocalypse_player


item replace entity @s[scores={switch.glassrunner.turtle_helmet=1..}] armor.head with turtle_helmet[enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},attribute_modifiers=[{type:"knockback_resistance",id:"switch.knockback_resistance",amount:1,operation:"add_value"}]]
item replace entity @s[scores={switch.glassrunner.turtle_helmet=..1}] armor.head with air

scoreboard players remove @s[scores={switch.glassrunner.turtle_helmet=1..}] switch.glassrunner.turtle_helmet 1


execute if data entity @s {OnGround:true} if predicate switch:glassrunner/in_elytra if entity @s[team=switch.glassrunner.blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=255]
execute if data entity @s {OnGround:true} if predicate switch:glassrunner/in_elytra if entity @s[team=switch.glassrunner.red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=16711680]

execute if score @s switch.glassrunner.elytra matches 2 run item replace entity @s armor.chest with elytra[unbreakable={}]
scoreboard players remove @s[scores={switch.glassrunner.elytra=1..}] switch.glassrunner.elytra 1
 

execute if entity @s[y=0,dy=70,gamemode=adventure] run kill @s
""")

	# /destroy_glass_around
	write_function(f"{path}/destroy_glass_around", """
# Tier 1 to Air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #switch:glassrunner/tier_1

fill ~-1 ~ ~2 ~1 ~ ~2 air replace #switch:glassrunner/tier_1
fill ~-1 ~ ~-2 ~1 ~ ~-2 air replace #switch:glassrunner/tier_1

fill ~-1 ~2 ~ ~1 ~2 ~ air replace #switch:glassrunner/tier_1
fill ~-1 ~-2 ~ ~1 ~-2 ~ air replace #switch:glassrunner/tier_1

fill ~ ~-1 ~2 ~ ~1 ~2 air replace #switch:glassrunner/tier_1
fill ~ ~-1 ~-2 ~ ~1 ~-2 air replace #switch:glassrunner/tier_1

fill ~2 ~-1 ~ ~2 ~1 ~ air replace #switch:glassrunner/tier_1
fill ~-2 ~-1 ~ ~-2 ~1 ~ air replace #switch:glassrunner/tier_1

fill ~2 ~ ~-1 ~2 ~ ~1 air replace #switch:glassrunner/tier_1
fill ~-2 ~ ~-1 ~-2 ~ ~1 air replace #switch:glassrunner/tier_1

fill ~ ~2 ~-1 ~ ~2 ~1 air replace #switch:glassrunner/tier_1
fill ~ ~-2 ~-1 ~ ~-2 ~1 air replace #switch:glassrunner/tier_1

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
	write_function(f"{path}/start/team", """

execute if score #count switch.data matches 0 run team join switch.glassrunner.red @s
execute if score #count switch.data matches 1 run team join switch.glassrunner.blue @s

function switch:modes/glassrunner/death/death

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #2 switch.data
""")

	# /apocalypse/end
	write_function(f"{path}/apocalypse/end", """
time set 6000
scoreboard players set #glassrunner.apocalypse switch.data 0
""")

	# /apocalypse/start (translation ref rewritten)
	write_function(f"{path}/apocalypse/start", """
time set 18000
function switch:modes/glassrunner/translations/apocalypse_start
""")

	# /apocalypse/tick
	write_function(f"{path}/apocalypse/tick", """
execute as @a[tag=!detached,gamemode=!spectator] at @s run function switch:modes/glassrunner/apocalypse/tick_player



summon lightning_bolt ~100 ~ ~100
summon lightning_bolt ~-100 ~ ~-100
summon lightning_bolt ~-100 ~ ~100
summon lightning_bolt ~100 ~ ~-100
""")

	# /apocalypse/tick_player
	write_function(f"{path}/apocalypse/tick_player", """
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #switch:glassrunner/glass


execute align xyz run summon creeper ~ ~2 ~ {DeathLootTable:"null",ExplosionRadius:10b,Fuse:0,ignited:true,Invulnerable:true}
""")

	# /money_maker/add_money
	write_function(f"{path}/money_maker/add_money", """




scoreboard players add @s switch.glassrunner.money 2
scoreboard players set @s switch.glassrunner.money_maker 0

xp add @s 2 levels



execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
""")

	# /money_maker/tick
	write_function(f"{path}/money_maker/tick", """






execute positioned ~ ~-2 ~ as @a[distance=..3] at @s if block ~ ~-1 ~ gold_block run scoreboard players add @s switch.glassrunner.money_maker 1



""")

	# /snowball/repart
	write_function(f"{path}/snowball/repart", """
tag @s add switch.glassrunner.snowball

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.renforced_glass_bridge_red run tag @s add switch.glassrunner.renforced_glass_bridge.red
execute if data entity @s Item.components."minecraft:custom_data".glassrunner.renforced_glass_bridge_blue run tag @s add switch.glassrunner.renforced_glass_bridge.blue

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge_red run tag @s add switch.glassrunner.glass_bridge.red
execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge_blue run tag @s add switch.glassrunner.glass_bridge.blue

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge run tag @s add switch.glassrunner.glass_bridge
""")

	# /snowball/use
	write_function(f"{path}/snowball/use", """
tag @s add switch.glassrunner.owner
execute as @e[type=minecraft:snowball,distance=..5,tag=!switch.glassrunner.snowball] run function switch:modes/glassrunner/snowball/repart
tag @s remove switch.glassrunner.owner

scoreboard players remove @s switch.glassrunner.use_snowball 1


execute positioned 2925 129 2925 if entity @s[team=switch.glassrunner.red,distance=..3] run loot give @s loot switch:glassrunner/snowball_bridge_red
execute positioned 3075 129 3075 if entity @s[team=switch.glassrunner.blue,distance=..3] run loot give @s loot switch:glassrunner/snowball_bridge_blue
""")

	# /fireball/explosion
	write_function(f"{path}/fireball/explosion", """
particle minecraft:flame ~ ~ ~ 1 1 1 .1 5


fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:glassrunner/glass_air

scoreboard players add @s switch.data 1
kill @s[scores={switch.data=500..}]
""")

	# /fireball/use (translation ref rewritten)
	write_function(f"{path}/fireball/use", """
execute positioned ~ ~1.8 ~ run summon fireball ^ ^ ^1.5 {Tags:["switch.glassrunner.fireball"]}
scoreboard players remove @s switch.glassrunner.money 15
xp add @s -15 levels
function switch:modes/glassrunner/translations/fireball_use
""")

	# /ctp/update_sb
	write_function(f"{path}/ctp/update_sb", """
$team modify switch.glassrunner.p_red suffix [{"text": "Red: ","color":"red"},{"text":"$(red)","color":"dark_red"},{"text":" points"}]
$team modify switch.glassrunner.p_blue suffix [{"text": "Blue: ","color":"blue"},{"text":"$(blue)","color":"dark_blue"},{"text":" points"}]
""")

	# /ctp/<loc>/capture_<color> (per capture point: reset its timer, award points + money + xp + sound)
	for loc, pts in (("center", 2), ("side1", 1), ("side2", 1)):
		for color in ("blue", "red"):
			write_function(f"{path}/ctp/{loc}/capture_{color}", f"""
scoreboard players set #glassrunner.ctp.{loc}.{color}.timer switch.data 0

scoreboard players add #glassrunner.points.{color} switch.data {pts}
scoreboard players add @a[tag=!detached,team=switch.glassrunner.{color}] switch.glassrunner.money 2
xp add @a[tag=!detached,team=switch.glassrunner.{color}] 2 levels


execute as @a[tag=!detached,team=switch.glassrunner.{color}] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
""")

	# /ctp/center/adding_timer
	write_function(f"{path}/ctp/center/adding_timer", """
execute if entity @s[team=switch.glassrunner.red] run scoreboard players add #glassrunner.ctp.center.red.timer switch.data 1
execute if entity @s[team=switch.glassrunner.blue] run scoreboard players add #glassrunner.ctp.center.blue.timer switch.data 1

execute store success score #temp switch.data if entity @s[team=switch.glassrunner.red] if entity @a[tag=!detached,dx=5,dy=3,dz=5,team=switch.glassrunner.blue] run scoreboard players set #glassrunner.ctp.center.red.timer switch.data 0
execute store success score #temp2 switch.data if entity @s[team=switch.glassrunner.blue] if entity @a[tag=!detached,dx=5,dy=3,dz=5,team=switch.glassrunner.red] run scoreboard players set #glassrunner.ctp.center.blue.timer switch.data 0

execute if score #temp switch.data matches 1 run fill 2997 127 2997 3003 127 3003 minecraft:white_concrete
execute if score #temp2 switch.data matches 1 run fill 2997 127 2997 3003 127 3003 minecraft:white_concrete
""")

	# /ctp/center/blue
	write_function(f"{path}/ctp/center/blue", """
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 1..2 run place template switch:glassrunner/center_blue/1 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 3..4 run place template switch:glassrunner/center_blue/2 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 5..6 run place template switch:glassrunner/center_blue/3 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 7..8 run place template switch:glassrunner/center_blue/4 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 9..10 run place template switch:glassrunner/center_blue/5 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 11..12 run place template switch:glassrunner/center_blue/6 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 13..14 run place template switch:glassrunner/center_blue/7 2997 127 2997
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/center/capture_blue
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")

	# /ctp/center/red
	write_function(f"{path}/ctp/center/red", """
execute if score #glassrunner.ctp.center.red.timer switch.data matches 1..2 run place template switch:glassrunner/center_red/1 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 3..4 run place template switch:glassrunner/center_red/2 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 5..6 run place template switch:glassrunner/center_red/3 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 7..8 run place template switch:glassrunner/center_red/4 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 9..10 run place template switch:glassrunner/center_red/5 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 11..12 run place template switch:glassrunner/center_red/6 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 13..14 run place template switch:glassrunner/center_red/7 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/center/capture_red
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")

	# /ctp/center/reset
	write_function(f"{path}/ctp/center/reset", """
scoreboard players set #glassrunner.ctp.center.red.timer switch.data 0
scoreboard players set #glassrunner.ctp.center.blue.timer switch.data 0
fill 2997 127 2997 3003 127 3003 minecraft:white_concrete
""")

	# /ctp/side1/adding_timer
	write_function(f"{path}/ctp/side1/adding_timer", """
execute if entity @s[team=switch.glassrunner.red] run scoreboard players add #glassrunner.ctp.side1.red.timer switch.data 1
execute if entity @s[team=switch.glassrunner.blue] run scoreboard players add #glassrunner.ctp.side1.blue.timer switch.data 1

execute store success score #temp switch.data if entity @s[team=switch.glassrunner.red] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.blue] run scoreboard players set #glassrunner.ctp.side1.red.timer switch.data 0
execute store success score #temp2 switch.data if entity @s[team=switch.glassrunner.blue] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.red] run scoreboard players set #glassrunner.ctp.side1.blue.timer switch.data 0

execute if score #temp switch.data matches 1 run fill 2926 127 3074 2924 127 3076 minecraft:white_concrete
execute if score #temp2 switch.data matches 1 run fill 2926 127 3074 2924 127 3076 minecraft:white_concrete
""")

	# /ctp/side1/blue
	write_function(f"{path}/ctp/side1/blue", """
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 1..3 run place template switch:glassrunner/side1_blue/1 2926 127 3076 180
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 4..6 run place template switch:glassrunner/side1_blue/2 2926 127 3076 180
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 7..9 run place template switch:glassrunner/side1_blue/3 2926 127 3076 180
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 10..12 run place template switch:glassrunner/side1_blue/4 2926 127 3076 180
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 13..15 run place template switch:glassrunner/side1_blue/5 2926 127 3076 180
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/side1/capture_blue
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")

	# /ctp/side1/red
	write_function(f"{path}/ctp/side1/red", """
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 1..3 run place template switch:glassrunner/side1_red/1 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 4..6 run place template switch:glassrunner/side1_red/2 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 7..9 run place template switch:glassrunner/side1_red/3 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 10..12 run place template switch:glassrunner/side1_red/4 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 13..15 run place template switch:glassrunner/side1_red/5 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/side1/capture_red
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")

	# /ctp/side1/reset
	write_function(f"{path}/ctp/side1/reset", """
scoreboard players set #glassrunner.ctp.side1.red.timer switch.data 0
scoreboard players set #glassrunner.ctp.side1.blue.timer switch.data 0
fill 2926 127 3074 2924 127 3076 minecraft:white_concrete
""")

	# /ctp/side2/adding_timer
	write_function(f"{path}/ctp/side2/adding_timer", """
execute if entity @s[team=switch.glassrunner.red] run scoreboard players add #glassrunner.ctp.side2.red.timer switch.data 1
execute if entity @s[team=switch.glassrunner.blue] run scoreboard players add #glassrunner.ctp.side2.blue.timer switch.data 1

execute store success score #temp switch.data if entity @s[team=switch.glassrunner.red] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.blue] run scoreboard players set #glassrunner.ctp.side2.red.timer switch.data 0
execute store success score #temp2 switch.data if entity @s[team=switch.glassrunner.blue] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.red] run scoreboard players set #glassrunner.ctp.side2.blue.timer switch.data 0

execute if score #temp switch.data matches 1 run fill 3074 127 2926 3076 127 2924 minecraft:white_concrete
execute if score #temp2 switch.data matches 1 run fill 3074 127 2926 3076 127 2924 minecraft:white_concrete
""")

	# /ctp/side2/blue
	write_function(f"{path}/ctp/side2/blue", """
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 1..3 run place template switch:glassrunner/side1_blue/1 3074 127 2924
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 4..6 run place template switch:glassrunner/side1_blue/2 3074 127 2924
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 7..9 run place template switch:glassrunner/side1_blue/3 3074 127 2924
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 10..12 run place template switch:glassrunner/side1_blue/4 3074 127 2924
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 13..15 run place template switch:glassrunner/side1_blue/5 3074 127 2924
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/side2/capture_blue
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")

	# /ctp/side2/red
	write_function(f"{path}/ctp/side2/red", """
execute if score #glassrunner.ctp.side2.red.timer switch.data matches 1..3 run place template switch:glassrunner/side1_red/1 3074 127 2924 180
execute if score #glassrunner.ctp.side2.red.timer switch.data matches 4..6 run place template switch:glassrunner/side1_red/2 3074 127 2924 180
execute if score #glassrunner.ctp.side2.red.timer switch.data matches 7..9 run place template switch:glassrunner/side1_red/3 3074 127 2924 180
execute if score #glassrunner.ctp.side2.red.timer switch.data matches 10..12 run place template switch:glassrunner/side1_red/4 3074 127 2924 180
execute if score #glassrunner.ctp.side2.red.timer switch.data matches 13..15 run place template switch:glassrunner/side1_red/5 3074 127 2924 180
execute if score #glassrunner.ctp.side2.red.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/side2/capture_red
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/
""")

	# /ctp/side2/reset
	write_function(f"{path}/ctp/side2/reset", """
scoreboard players set #glassrunner.ctp.side2.red.timer switch.data 0
scoreboard players set #glassrunner.ctp.side2.blue.timer switch.data 0
fill 3074 127 2926 3076 127 2924 minecraft:white_concrete
""")

	# /death/blue
	write_function(f"{path}/death/blue", """

item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=255]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=255]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=255]


loot give @s loot switch:glassrunner/snowball_bridge_blue_x8
""")

	# /death/both
	write_function(f"{path}/death/both", """
scoreboard players add @s switch.glassrunner.turtle_helmet 50

execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{ctc:{id:"glassrunner:bow"}}}}] run loot give @s loot switch:glassrunner/bow
execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{ctc:{id:"glassrunner:fireball_wand"}}}}] run loot give @s loot switch:glassrunner/fireball_wand
give @s arrow 4

function switch:modes/glassrunner/shop/reset_item
""")

	# /death/death
	write_function(f"{path}/death/death", """
clear @s snowball
clear @s arrow

effect clear @s

execute if entity @s[team=!switch.glassrunner.red,team=!switch.glassrunner.blue] run function switch:modes/glassrunner/death/random

execute if entity @s[team=switch.glassrunner.red] run function switch:modes/glassrunner/death/red
execute if entity @s[team=switch.glassrunner.blue] run function switch:modes/glassrunner/death/blue

function switch:modes/glassrunner/death/both

spreadplayers 2925 2925 0 2 true @s[team=switch.glassrunner.red]
spreadplayers 3075 3075 0 2 true @s[team=switch.glassrunner.blue]
execute at @s facing 3000 128 3000 run tp ~ 129 ~
scoreboard players set @s switch.glassrunner.deathCount 0

effect give @s resistance infinite 255 true
effect give @s jump_boost infinite 3 true
effect give @s saturation infinite 255 true
effect give @s speed infinite 3 true

gamemode adventure @s
""")

	# /death/random
	write_function(f"{path}/death/random", """
execute store result score #nb_red switch.data if entity @a[tag=!detached,team=switch.glassrunner.red]
execute store result score #nb_blue switch.data if entity @a[tag=!detached,team=switch.glassrunner.blue]

execute if score #nb_red switch.data > #nb_blue switch.data run team join switch.glassrunner.blue @s
execute if score #nb_red switch.data <= #nb_blue switch.data run team join switch.glassrunner.red @s
""")

	# /death/red
	write_function(f"{path}/death/red", """
item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=16711680]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=16711680]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=16711680]

loot give @s loot switch:glassrunner/snowball_bridge_red_x8
""")

	# /end/blue (translation ref rewritten)
	write_function(f"{path}/end/blue", """
function switch:modes/glassrunner/translations/end_blue

scoreboard players set #process_end switch.data 1
""")

	# /end/null (translation ref rewritten)
	write_function(f"{path}/end/null", """
function switch:modes/glassrunner/translations/end_null


scoreboard players set #process_end switch.data 1
""")

	# /end/process_end
	write_function(f"{path}/end/process_end", """



execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win



execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/glassrunner/death
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200.. run function switch:engine/restart

scoreboard players add #process_end switch.data 1
""")

	# /end/red (translation ref rewritten)
	write_function(f"{path}/end/red", """
function switch:modes/glassrunner/translations/end_red

scoreboard players set #process_end switch.data 1
""")

	# /shop/apocalypse (translation ref rewritten)
	write_function(f"{path}/shop/apocalypse", """




clear @s ghast_tear[custom_data~{to_clear:true}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 25.. if entity @s[team=switch.glassrunner.red] as @a[team=switch.glassrunner.blue] run scoreboard players add @s switch.glassrunner.apocalypse 10
execute if score @s switch.glassrunner.money matches 25.. if entity @s[team=switch.glassrunner.blue] as @a[team=switch.glassrunner.red] run scoreboard players add @s switch.glassrunner.apocalypse 10

function switch:modes/glassrunner/translations/shop_apocalypse

execute if score @s switch.glassrunner.money matches 25.. run xp add @s -25 levels
execute if score @s switch.glassrunner.money matches 25.. run scoreboard players remove @s switch.glassrunner.money 25



""")

	# /shop/apocalypse_player
	write_function(f"{path}/shop/apocalypse_player", """




# effect give @s minecraft:levitation 1 80 true



fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace #switch:glassrunner/glass


execute if score @s switch.glassrunner.apocalypse matches ..5 align xyz run summon creeper ~ ~3 ~ {DeathLootTable:"null",ExplosionRadius:5b,Fuse:0,ignited:true,Invulnerable:true}

scoreboard players remove @s switch.glassrunner.apocalypse 1
""")

	# /shop/arrow (translation ref rewritten)
	write_function(f"{path}/shop/arrow", """




clear @s flint[custom_data~{to_clear:true}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 5.. run give @s arrow 5

function switch:modes/glassrunner/translations/shop_arrow

execute if score @s switch.glassrunner.money matches 5.. run xp add @s -5 levels
execute if score @s switch.glassrunner.money matches 5.. run scoreboard players remove @s switch.glassrunner.money 5



""")

	# /shop/elytra (translation ref rewritten)
	write_function(f"{path}/shop/elytra", """




clear @s elytra[custom_data~{to_clear:true}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
#lore  : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 20.. run effect give @s minecraft:levitation 1 40 true 
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players set @s switch.glassrunner.elytra 20

function switch:modes/glassrunner/translations/shop_elytra

execute if score @s switch.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players remove @s switch.glassrunner.money 20



""")

	# /shop/igloo (translation ref rewritten)
	write_function(f"{path}/shop/igloo", """

clear @s blue_ice[custom_data~{to_clear:true}]


function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 red_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 red_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 red_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 pink_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 pink_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air


execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 blue_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 blue_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 blue_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air


function switch:modes/glassrunner/translations/shop_igloo

execute if score @s switch.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players remove @s switch.glassrunner.money 20



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
	write_function(f"{path}/shop/snowball", """

clear @s snow_block[custom_data~{to_clear:true}]

# item_name : Snowball renforcée x5
# lore : Permet de faire des bridges dirrectement en vitre foncée !
# lore : Prix : 8 levels
function switch:modes/glassrunner/shop/reset_item


execute if score @s[team=switch.glassrunner.red] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_red_x5
execute if score @s[team=switch.glassrunner.blue] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_blue_x5

function switch:modes/glassrunner/translations/shop_snowball

execute if score @s switch.glassrunner.money matches 8.. run xp add @s -8 levels
execute if score @s switch.glassrunner.money matches 8.. run scoreboard players remove @s switch.glassrunner.money 8
""")

	# /shop/turtle (translation ref rewritten)
	write_function(f"{path}/shop/turtle", """




clear @s turtle_helmet[custom_data~{to_clear:true}]

# item_name : Flèches x5
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 12.. run scoreboard players add @s switch.glassrunner.turtle_helmet 200

function switch:modes/glassrunner/translations/shop_turtle

execute if score @s switch.glassrunner.money matches 12.. run xp add @s -12 levels
execute if score @s switch.glassrunner.money matches 12.. run scoreboard players remove @s switch.glassrunner.money 12
""")
