
#> switch:modes/replicate_the_build/utils/verify_a_block
#
# @executed	as @e[tag=switch.rtb.verify_island] & at @s
#
# @within	switch:modes/replicate_the_build/round/6 [ as @e[tag=switch.rtb.verify_island] & at @s ]
#

# -29999997 22 1603
clone ~ ~ ~ ~ ~ ~ -29999997 22 1603

scoreboard players operation #search_id switch.rtb.id = @s switch.rtb.id
execute if blocks -29999997 22 1603 -29999997 22 1603 -29999997 23 1603 all as @a[scores={switch.alive=1..}] if score @s switch.rtb.id = #search_id switch.rtb.id run scoreboard players add @s switch.rtb.points 1

