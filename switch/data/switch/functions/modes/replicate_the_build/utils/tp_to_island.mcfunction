scoreboard players operation #rtb_search switch.rtb.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.rtb.data run tp @p[tag=switch.rtb.temp] @s
tag @s remove switch.rtb.temp