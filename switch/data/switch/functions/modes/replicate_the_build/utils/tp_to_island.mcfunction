scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.data at @s run tp @p[tag=switch.rtb.temp] ~ ~1 ~
tag @a remove switch.rtb.temp