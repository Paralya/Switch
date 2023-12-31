
scoreboard players set #count switch.data 0
tag @s add switch.temp
execute as @e[type=warden] on attacker if entity @s[tag=switch.temp] run scoreboard players add #count switch.data 1
tag @s remove switch.temp
execute if score #count switch.data matches 8.. run advancement grant @s only switch:visible/26

