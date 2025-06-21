
#> switch:player/trigger/rating/note
#
# @within	switch:player/trigger/rating/action with storage switch:temp input
#

## Advancement
scoreboard objectives add switch.rates_given dummy
scoreboard players add @s switch.rates_given 1
execute unless score #test_mode switch.data matches 1 if score @s switch.rates_given matches 20.. run advancement grant @s only switch:visible/56

## {index:0,index_hundred:0,digits:0,player:""}
# Add player to list of players
scoreboard players set #previous switch.data 0
$execute store result score #previous switch.data run data get storage switch:ratings all[{index:$(index)}].players[{name:"$(player)"}].value
$execute if score #previous switch.data matches 0 run data modify storage switch:ratings all[{index:$(index)}].players append value {name:"$(player)",value:$(digits)}
$data modify storage switch:ratings all[{index:$(index)}].players[{name:"$(player)"}].value set value $(digits)

## Update game rating
# Calculate new points
$execute store result score #points switch.data run data get storage switch:ratings all[{index:$(index)}].points
scoreboard players operation #points switch.data -= #previous switch.data
$scoreboard players add #points switch.data $(digits)
$execute store result storage switch:ratings all[{index:$(index)}].points int 1 run scoreboard players get #points switch.data

# Calculate int and digits rating
$execute store result score #count switch.data run data get storage switch:ratings all[{index:$(index)}].players
scoreboard players operation #points switch.data *= #1000 switch.data
scoreboard players operation #digits switch.data = #points switch.data
scoreboard players operation #points switch.data /= #count switch.data
scoreboard players operation #points switch.data /= #1000 switch.data
scoreboard players operation #digits switch.data %= #count switch.data
$execute store result storage switch:ratings all[{index:$(index)}].int int 1 run scoreboard players get #points switch.data
$execute store result storage switch:ratings all[{index:$(index)}].digits int 1 run scoreboard players get #digits switch.data

# Verbose
$scoreboard players set #temp switch.data $(digits)
function switch:translations/player_trigger_rating_note with storage switch:temp input

# Sort all the ratings
function switch:player/trigger/rating/sort

