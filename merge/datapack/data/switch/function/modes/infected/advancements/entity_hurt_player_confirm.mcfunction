
# In every case, particles of blood
particle block{block_state:"redstone_wire"} ~ ~1 ~ 0.35 0.5 0.35 0 100 force @a[distance=..100]

## If the attacker is a zombie,
# Tag the attacker as a zombie
scoreboard players set #zombie_attacker switch.data 0
execute on attacker if entity @s[team=switch.temp.zombie] store success score #zombie_attacker switch.data run tag @s add switch.temp

# Take the damage points of the attacker and compare it to the health of the victim
execute if score #zombie_attacker switch.data matches 1 run scoreboard players set #damage switch.data 280
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 1 run scoreboard players set #damage switch.data 285
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 2 run scoreboard players set #damage switch.data 290
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 3 run scoreboard players set #damage switch.data 295
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 4 run scoreboard players set #damage switch.data 300
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 5 run scoreboard players set #damage switch.data 305
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 6 run scoreboard players set #damage switch.data 310
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 7 run scoreboard players set #damage switch.data 315
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_strength matches 8 run scoreboard players set #damage switch.data 320

execute if score #zombie_attacker switch.data matches 1 store result score #current_zombie_count switch.data if entity @a[tag=!detached,team=switch.temp.zombie]
execute if score #zombie_attacker switch.data matches 1 if score #current_zombie_count switch.data matches 1 run scoreboard players operation #damage switch.data *= #2 switch.data
execute if score #zombie_attacker switch.data matches 1 store result score #health switch.data run data get entity @s Health 100
execute if score #zombie_attacker switch.data matches 1 run scoreboard players operation #health switch.data -= #damage switch.data

# If the victim's health is less than or equal to 0, launch the infection
execute if score #zombie_attacker switch.data matches 1 if score #health switch.data matches ..0 run function switch:modes/infected/death/launch_infection

# Else, apply the damage to the victim
execute if score #zombie_attacker switch.data matches 1 run data modify storage switch:main input set value {damage:0}
execute if score #zombie_attacker switch.data matches 1 store result storage switch:main input.damage int 0.01 run scoreboard players get #damage switch.data
execute if score #zombie_attacker switch.data matches 1 run function switch:modes/infected/advancements/apply_damage with storage switch:main input
tag @a remove switch.temp

# Advancement
scoreboard players add @s switch.temp.hits_gotten 1

