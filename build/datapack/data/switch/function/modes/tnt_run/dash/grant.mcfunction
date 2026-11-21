
#> switch:modes/tnt_run/dash/grant
#
# @executed	as @a[tag=!detached,gamemode=adventure]
#
# @within	switch:modes/tnt_run/dash/award
#			switch:modes/tnt_run/dash/grant
#

scoreboard players add @s switch.temp.dashes 1
scoreboard players add @s switch.temp.dash_gap 25
scoreboard players operation @s switch.temp.dash_next += @s switch.temp.dash_gap
execute at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 2
execute if entity @s[scores={switch.lang=0}] run tellraw @s ["",{"text":"⚡ +1 dash ! ","color":"#00E5FF"},{"text":"Le prochain à ","color":"#AEBBD0"},{"score":{"name":"@s","objective":"switch.temp.dash_next"},"color":"#FFE60A"},{"text":" blocs","color":"#AEBBD0"}]
execute if entity @s[scores={switch.lang=1}] run tellraw @s ["",{"text":"⚡ +1 dash! ","color":"#00E5FF"},{"text":"Next one at ","color":"#AEBBD0"},{"score":{"name":"@s","objective":"switch.temp.dash_next"},"color":"#FFE60A"},{"text":" blocks","color":"#AEBBD0"}]
execute if score @s switch.temp.blocks >= @s switch.temp.dash_next run function switch:modes/tnt_run/dash/grant

