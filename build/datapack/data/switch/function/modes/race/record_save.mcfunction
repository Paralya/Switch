
#> switch:modes/race/record_save
#
# @executed	as @a[tag=!detached,gamemode=!spectator,distance=..20,predicate=switch:has_same_checkpoint]
#
# @within	switch:modes/race/finished with storage switch:main
#
# @args		map (unknown)
#

execute if score #test_mode switch.data matches 1 run return 0

# Time of the run in hundredths of a second
scoreboard players operation #time switch.data = #race_seconds switch.data
scoreboard players operation #time switch.data *= #100 switch.data
scoreboard players operation #time switch.data += #digit switch.data

scoreboard players set #record switch.data 2147483647
$execute if data storage switch:records race.$(map).time store result score #record switch.data run data get storage switch:records race.$(map).time
execute if score #time switch.data >= #record switch.data run return 0

# Save it
scoreboard players operation #tens switch.data = #digit switch.data
scoreboard players operation #tens switch.data /= #10 switch.data
scoreboard players operation #units switch.data = #digit switch.data
scoreboard players operation #units switch.data %= #10 switch.data
$execute store result storage switch:records race.$(map).time int 1 run scoreboard players get #time switch.data
$execute store result storage switch:records race.$(map).seconds int 1 run scoreboard players get #race_seconds switch.data
$execute store result storage switch:records race.$(map).tens int 1 run scoreboard players get #tens switch.data
$execute store result storage switch:records race.$(map).units int 1 run scoreboard players get #units switch.data
loot replace entity @s hotbar.0 loot switch:get_username
$data modify storage switch:records race.$(map).player set from entity @s Inventory[0].components."minecraft:profile".name
clear @s
execute as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
$function switch:modes/race/translations/record_new with storage switch:records race.$(map)

