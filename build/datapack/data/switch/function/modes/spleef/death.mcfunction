
#> switch:modes/spleef/death
#
# @within	switch:modes/spleef/joined
#			switch:modes/spleef/process_end [ as @a[tag=!detached] ]
#			switch:modes/spleef/tick [ as @a[tag=!detached,gamemode=survival,predicate=switch:in_lava,sort=random] ]
#

# Attribute the kill: nearest recent digger marker in the column above the victim (excluding
# themselves) — the markers sit up at the snow layer while the victim dies down in the lava,
# so the search box covers ±3 blocks horizontally and up to 24 blocks above the death position
scoreboard players operation #victim_id switch.id = @s switch.id
scoreboard players set #killer_id switch.id 0
execute at @s positioned ~-3 ~-2 ~-3 as @n[tag=switch.spleef_dig,dx=6,dy=26,dz=6] run scoreboard players operation #killer_id switch.id = @s switch.id
execute if score #killer_id switch.id = #victim_id switch.id run scoreboard players set #killer_id switch.id 0

# Tag that digger as the killer so the death message can name them
scoreboard players operation #player_id switch.id = #killer_id switch.id
execute if score #killer_id switch.id matches 1.. as @a[tag=!detached,predicate=switch:has_same_id] run tag @s add switch.spleef_killer

function switch:modes/spleef/translations/death
tag @a remove switch.spleef_killer
function switch:modes/_common/death_spectator

