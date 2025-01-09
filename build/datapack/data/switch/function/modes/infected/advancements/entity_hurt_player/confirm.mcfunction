
#> switch:modes/infected/advancements/entity_hurt_player/confirm
#
# @within	switch:modes/infected/advancements/entity_hurt_player/main
#

# In every case, particles of blood
particle block{block_state:"redstone_wire"} ~ ~1 ~ 0.35 0.5 0.35 0 100 force @a[distance=..100]

# If the attacker is a zombie, tag him for selection and apply damage logic
scoreboard players set #zombie_attacker switch.data 0
execute on attacker if entity @s[team=switch.temp.zombie] store success score #zombie_attacker switch.data run tag @s add switch.temp
execute if score #zombie_attacker switch.data matches 1 run function switch:modes/infected/advancements/entity_hurt_player/is_zombie_attacker

# Remove the temporary tag
tag @a[tag=switch.temp] remove switch.temp

# Increment the number of hits gotten (for an advancement)
scoreboard players add @s switch.temp.hits_gotten 1

