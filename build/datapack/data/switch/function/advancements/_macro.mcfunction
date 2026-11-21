
#> switch:advancements/_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:advancements/_pre_macro with storage switch:main input
#
# @args		id (unknown)
#			username (unknown)
#

# [
# 	{"text": "Aider à la construction d'une map ou la création d'un mini-jeu\n", "color": "#00E5FF"},
# 	{"nbt": "all.1.percent.int", "storage": "switch:advancements", "color":"#2EFF8B"},
# 	{"text":".", "color":"#2EFF8B"},
# 	{"nbt": "all.1.percent.digits", "storage": "switch:advancements", "color":"#2EFF8B"},
# 	{"text":"% des joueurs", "color":"#2EFF8B"}
# ]

scoreboard players set #success switch.data 0
$execute if data storage switch:advancements all[{id:$(id)}].players[{name:"$(username)"}] run scoreboard players set #success switch.data 1
$execute if score #success switch.data matches 0 store result score #local_total switch.data run data get storage switch:advancements all[{id:$(id)}].total
execute if score #success switch.data matches 0 run scoreboard players add #local_total switch.data 1
$execute if score #success switch.data matches 0 store result storage switch:advancements all[{id:$(id)}].total int 1 run scoreboard players get #local_total switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #total_players switch.data = #next_id switch.id
execute if score #success switch.data matches 0 run scoreboard players operation #local_total switch.data *= #100000 switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #local_total switch.data /= #total_players switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #digits switch.data = #local_total switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #digits switch.data %= #1000 switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #local_total switch.data /= #1000 switch.data
$execute if score #success switch.data matches 0 store result storage switch:advancements all[{id:$(id)}].percent.int int 1 run scoreboard players get #local_total switch.data
$execute if score #success switch.data matches 0 store result storage switch:advancements all[{id:$(id)}].percent.digits int 1 run scoreboard players get #digits switch.data
$execute if score #success switch.data matches 0 run data modify storage switch:advancements all[{id:$(id)}].players append value {name:"$(username)"}

