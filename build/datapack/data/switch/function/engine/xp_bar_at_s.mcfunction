
#> switch:engine/xp_bar_at_s
#
# @executed	as @a[tag=!detached,gamemode=!spectator]
#
# @within	switch:modes/fireblast/xp_bar
#			switch:modes/fish_fight/xp_bar
#			switch:modes/laser_game/xp_bar
#			switch:modes/pitchout/xp_bar
#

# Divide points
scoreboard players operation #points switch.data /= #divide switch.data
scoreboard players set #divide switch.data 1
execute if score #points switch.data matches ..0 run scoreboard players set #points switch.data 0
execute if score #points switch.data matches 1000.. run scoreboard players set #points switch.data 1000

# XP from 0 to 1000 points
xp set @s 130 levels
data modify storage switch:main temp set value {selector:"@s", xp:0, type:""}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #points switch.data
function switch:engine/xp_bar_macro with storage switch:main temp
xp set @s 0 levels

