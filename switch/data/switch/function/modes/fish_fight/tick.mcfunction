
scoreboard players add #fish_fight_ticks switch.data 1

# Prevent drop
execute as @e[type=item,tag=!switch.checked] run function switch:modes/fish_fight/no_drop

# Custom Saturation
execute as @a[tag=!detached] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

# Détection si un joueur/axolotl est en mer
execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached,gamemode=survival,scores={switch.alive=1..,switch.temp.cooldown=1..}] at @s if entity @s[y=20,dy=105] run function switch:modes/fish_fight/tp_airdox

execute as @a[scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] run function switch:maps/spread_one_player 
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/fish_fight/death
# axolot si map airdox
execute if data storage switch:main {map:"airdox_fish_fight"} as @e[type=axolotl] at @s if entity @s[y=20,dy=105] run function switch:modes/fish_fight/tp_airdox
execute if data storage switch:main {map:"airdox_fish_fight"} as @e[type=ender_pearl] at @s if entity @s[y=20,dy=105] run kill @s


execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached,gamemode=survival] at @s if entity @s[y=20,dy=105] run scoreboard players add @s switch.temp.deathCooldown 1

execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached,gamemode=survival,scores={switch.temp.deathCooldown=60..}] run function switch:modes/fish_fight/death


execute as @a[scores={switch.alive=1..},predicate=switch:in_water,sort=random] run function switch:modes/fish_fight/death
execute as @e[type=axolotl,predicate=switch:in_water] run function switch:maps/spread_one_player


# Détection si un joueur tue un axolotl
execute as @a[tag=!detached,scores={switch.temp.axolotl_killed=1..}] run function switch:modes/fish_fight/axobonus

# Particules
execute at @a[tag=!detached,scores={switch.alive=3}] run particle dust 0.631 0.973 0.867 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=2}] run particle dust 1 1 0.447 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=1}] run particle dust 0.996 0.522 0.522 1 ~ ~2.4 ~ .1 .1 .1 0 1

# Cooldown invincibilité
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air

# Placed blocks disappear
function switch:modes/fish_fight/block_disappear/global_tick

## Détection de fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,scores={switch.alive=1..}]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/fish_fight/process_end
execute if score #fish_fight_seconds switch.data matches 600.. run function switch:modes/fish_fight/process_end

