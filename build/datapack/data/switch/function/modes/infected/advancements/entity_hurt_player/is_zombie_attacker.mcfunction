
#> switch:modes/infected/advancements/entity_hurt_player/is_zombie_attacker
#
# @within	switch:modes/infected/advancements/entity_hurt_player/confirm
#

# Take the damage points of the attacker and compare it to the health of the victim
scoreboard players set #damage switch.data 280
execute on attacker if score @s switch.infected.zombie_strength matches 1 run scoreboard players set #damage switch.data 285
execute on attacker if score @s switch.infected.zombie_strength matches 2 run scoreboard players set #damage switch.data 290
execute on attacker if score @s switch.infected.zombie_strength matches 3 run scoreboard players set #damage switch.data 295
execute on attacker if score @s switch.infected.zombie_strength matches 4 run scoreboard players set #damage switch.data 300
execute on attacker if score @s switch.infected.zombie_strength matches 5 run scoreboard players set #damage switch.data 305
execute on attacker if score @s switch.infected.zombie_strength matches 6 run scoreboard players set #damage switch.data 310
execute on attacker if score @s switch.infected.zombie_strength matches 7 run scoreboard players set #damage switch.data 315
execute on attacker if score @s switch.infected.zombie_strength matches 8 run scoreboard players set #damage switch.data 320

# If only one zombie is left, double the damage
execute store result score #current_zombie_count switch.data if entity @a[tag=!detached,team=switch.temp.zombie]
execute if score #current_zombie_count switch.data matches 1 run scoreboard players operation #damage switch.data *= #2 switch.data

# If less than 10% are zombies, double the damage
execute if score #current_zombie_count switch.data matches 2.. run function switch:modes/infected/advancements/entity_hurt_player/check_double_damage

# Get the victim's health
execute store result score #health switch.data run data get entity @s Health 100
scoreboard players operation #health switch.data -= #damage switch.data

# If the victim's health is less than or equal to 0, launch the infection
execute if score #health switch.data matches ..0 run return run function switch:modes/infected/death/launch_infection

# Else, apply the damage to the victim
data modify storage switch:main input set value {damage:0}
execute store result storage switch:main input.damage int 0.01 run scoreboard players get #damage switch.data
function switch:modes/infected/advancements/apply_damage with storage switch:main input

