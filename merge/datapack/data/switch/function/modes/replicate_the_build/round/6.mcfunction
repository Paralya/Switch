
execute as @e[tag=switch.rtb.verify] at @s run particle happy_villager ~ ~ ~ .1 .1 .1 0 1 normal

scoreboard players remove #rtb_calcul_time switch.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_calcul_time switch.data



# The original block is at -29999997 23 1603
execute as @e[tag=switch.rtb.verify_center] at @s run clone ~ ~ ~ ~ ~ ~ -29999997 23 1603

# All island blocks are at -29999997 22 1603
execute as @e[tag=switch.rtb.verify_island] at @s run function switch:modes/replicate_the_build/utils/verify_a_block


# Now tp to the next block in the row
scoreboard players add #rtb_dx switch.data 1
execute as @e[tag=switch.rtb.verify] at @s run tp @s ~1 ~ ~


# Reset the x score and increment the z score
execute if score #rtb_dx switch.data matches 7.. run scoreboard players add #rtb_dz switch.data 1 
execute if score #rtb_dx switch.data matches 7.. as @e[tag=switch.rtb.verify] at @s run tp @s ~-7 ~ ~1
execute if score #rtb_dx switch.data matches 7.. run scoreboard players set #rtb_dx switch.data 0




execute if score #rtb_dz switch.data matches 7.. run scoreboard players add #rtb_dy switch.data 1
execute if score #rtb_dz switch.data matches 7.. as @e[tag=switch.rtb.verify] at @s run tp @s ~ ~1 ~-7
execute if score #rtb_dz switch.data matches 7.. run scoreboard players set #rtb_dz switch.data 0

execute if score #rtb_dy switch.data matches 7.. run function switch:modes/replicate_the_build/round/6_end

