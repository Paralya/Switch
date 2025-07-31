
#> switch:modes/bombardement/record_save
#
# @executed	as @a[tag=!detached,gamemode=!spectator]
#
# @within	switch:modes/bombardement/process_end [ as @a[tag=!detached,gamemode=!spectator] ]
#

loot replace entity @s hotbar.0 loot switch:get_username
scoreboard players set #record switch.data 0
execute store result score #record switch.data run data get storage switch:records bombardement.seconds
execute if score #bombardement_seconds switch.data > #record switch.data store result storage switch:records bombardement.seconds int 1 run scoreboard players get #bombardement_seconds switch.data
execute if score #bombardement_seconds switch.data > #record switch.data run data modify storage switch:records bombardement.player set from entity @s Inventory[0].components."minecraft:profile".name
execute if score #bombardement_seconds switch.data > #record switch.data as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
execute if score #bombardement_seconds switch.data > #record switch.data run function switch:modes/bombardement/record_tellraw with storage switch:records bombardement

