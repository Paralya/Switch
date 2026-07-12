
#> switch:modes/spleef/death
#
# @within	switch:modes/spleef/joined
#			switch:modes/spleef/process_end [ as @a[tag=!detached] ]
#			switch:modes/spleef/tick [ as @a[tag=!detached,gamemode=survival,predicate=switch:in_lava,sort=random] ]
#

# Attribute the kill: nearest recent digger marker under the victim (excluding themselves)
scoreboard players operation #victim_id switch.id = @s switch.id
scoreboard players set #killer_id switch.id 0
execute at @s as @n[tag=switch.spleef_dig,distance=..4] run scoreboard players operation #killer_id switch.id = @s switch.id
execute if score #killer_id switch.id = #victim_id switch.id run scoreboard players set #killer_id switch.id 0

# Tag that digger as the killer so the death message can name them
scoreboard players operation #player_id switch.id = #killer_id switch.id
execute if score #killer_id switch.id matches 1.. as @a[tag=!detached,predicate=switch:has_same_id] run tag @s add switch.spleef_killer

function switch:modes/spleef/translations/death
tag @a remove switch.spleef_killer
function switch:modes/_common/death_spectator

