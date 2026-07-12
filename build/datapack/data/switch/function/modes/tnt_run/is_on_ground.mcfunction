
#> switch:modes/tnt_run/is_on_ground
#
# @executed	as @a[tag=!detached,gamemode=adventure] & at @s
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure] & at @s ]
#

# Get the player's motion in the y direction
scoreboard players set #temp switch.data 0
execute store result score #temp switch.data run data get entity @s Motion[1] 100

# Remember whose feet the marker is under (used to attribute destroyed blocks to that player)
scoreboard players operation #player_id switch.id = @s switch.id

# If player is not falling, summon a marker at their position
execute if score #temp switch.data matches -8 summon marker run function switch:modes/tnt_run/dash/setup_marker
execute unless score #temp switch.data matches -8 unless block ~ ~-.25 ~ air summon marker run function switch:modes/tnt_run/dash/setup_marker

