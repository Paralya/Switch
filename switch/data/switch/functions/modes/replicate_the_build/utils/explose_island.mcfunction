

scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.data at @s positioned ~ ~ ~3 run summon creeper ~ ~ ~ {Fuse:0,ignited:1b}
execute as @e[type=marker,tag=switch.rtb.island] if score @s switch.rtb.id = #rtb_search switch.data at @s run function switch:modes/replicate_the_build/structure/destroy
tag @s remove switch.rtb.temp

