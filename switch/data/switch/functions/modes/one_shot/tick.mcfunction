
scoreboard players add #one_shot_ticks switch.data 1

# Prevent drop
execute as @e[type=item,tag=!switch.checked] run function switch:modes/one_shot/no_drop

# Custom Saturation
execute as @a[tag=!detached] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true
#mort 
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/one_shot/death


# axolot si map airdox
# execute if data storage switch:main {map:"airdox_one_shot"} as @e[type=axolotl] at @s if entity @s[y=20,dy=105] run function switch:modes/one_shot/tp_airdox
# execute if data storage switch:main {map:"airdox_one_shot"} as @e[type=ender_pearl] at @s if entity @s[y=20,dy=105] run kill @s
# execute if data storage switch:main {map:"airdox_one_shot"} as @a[tag=!detached,gamemode=survival] at @s if entity @s[y=20,dy=105] run scoreboard players add @s switch.temp.deathCooldown 1
# execute if data storage switch:main {map:"airdox_one_shot"} as @a[tag=!detached,gamemode=survival,scores={switch.temp.deathCooldown=60..}] run function switch:modes/one_shot/death


# Détection si un joueur tue un axolotl
# execute as @a[tag=!detached,scores={switch.temp.axolotl_killed=1..}] run function switch:modes/one_shot/axobonus

# Particules
execute at @a[tag=!detached,scores={switch.alive=7}] run particle dust 0.631 0.973 0.867 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=6}] run particle dust 0.337 0.788 0.212 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=5}] run particle dust 1 1 0.447 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=4}] run particle dust 0.988 0.796 0.22 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3}] run particle dust 0.878 0.365 0.02 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=2}] run particle dust 0.325 0.153 0.047 1 ~ ~2.4 ~ .1 .1 .1 0 1

# Cooldown invincibilité
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air
give @a[scores={switch.temp.cooldown=1}] arrow 1


## Détection de fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,scores={switch.alive=1..}]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/one_shot/process_end
execute if score #one_shot_seconds switch.data matches 600.. run function switch:modes/one_shot/process_end

