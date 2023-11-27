
# In every case, particles of blood
particle block redstone_wire ~ ~1 ~ 0.35 0.5 0.35 0 100 force @a[distance=..100]

## If the attacker is a zombie,
# Tag the attacker as a zombie
scoreboard players set #zombie_attacker switch.data 0
execute on attacker if entity @s[team=switch.temp.zombie] store success score #zombie_attacker switch.data run tag @s add switch.temp

# Take the damage points of the attacker and compare it to the health of the victim
execute if score #zombie_attacker switch.data matches 1 run scoreboard players set #damage switch.data 4
execute if score #zombie_attacker switch.data matches 1 on attacker if score @s switch.infected.zombie_damage matches 1.. run scoreboard players operation #damage switch.data = @s switch.infected.zombie_damage
execute if score #zombie_attacker switch.data matches 1 store result score #health switch.data run data get entity @s Health
execute if score #zombie_attacker switch.data matches 1 run scoreboard players operation #health switch.data -= #damage switch.data

# If the victim's health is less than or equal to 0, launch the infection
execute if score #zombie_attacker switch.data matches 1 if score #health switch.data matches ..0 run function switch:modes/infected/death/launch_infection

# Else, apply the damage to the victim
execute if score #zombie_attacker switch.data matches 1 run data modify storage switch:main input set value {damage:0}
execute if score #zombie_attacker switch.data matches 1 store result storage switch:main input.damage int 1 run scoreboard players get #damage switch.data
execute if score #zombie_attacker switch.data matches 1 run function switch:modes/infected/advancements/apply_damage with storage switch:main input
tag @a remove switch.temp

