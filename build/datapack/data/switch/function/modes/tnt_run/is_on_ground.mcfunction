
#> switch:modes/tnt_run/is_on_ground
#
# @executed	as @a[tag=!detached,gamemode=adventure] & at @s
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure] & at @s ]
#

# Get the player's motion in the y direction
scoreboard players set #temp switch.data 0
execute store result score #temp switch.data run data get entity @s Motion[1] 100

# If player is not falling, summon a marker at their position
execute if score #temp switch.data matches -8 run summon marker ~ ~ ~ {Tags:["switch.tnt_run"]}
execute unless score #temp switch.data matches -8 unless block ~ ~-.25 ~ air run summon marker ~ ~ ~ {Tags:["switch.tnt_run"]}

