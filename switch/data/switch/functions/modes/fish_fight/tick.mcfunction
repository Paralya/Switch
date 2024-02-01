
scoreboard players add #fish_fight_ticks switch.data 1

execute as @e[type=item,tag=!switch.checked] run function switch:modes/fish_fight/no_drop

execute as @a[scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] run function switch:maps/spread_one_player 
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/fish_fight/death

execute as @a[scores={switch.alive=1..},predicate=switch:in_water,sort=random] run function switch:modes/fish_fight/death
execute as @e[type=axolotl,predicate=switch:in_water] run function switch:maps/spread_one_player

#si un joueur tue un axolotl il est détecté
execute as @a[tag=!detached,scores={switch.temp.axolotl_killed=1..}] run function switch:modes/fish_fight/axobonus

execute at @a[scores={switch.alive=3}] run particle dust 0.631 0.973 0.867 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[scores={switch.alive=2}] run particle dust 1 1 0.447 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[scores={switch.alive=1}] run particle dust 0.996 0.522 0.522 1 ~ ~2.4 ~ .1 .1 .1 0 1

scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air

scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[scores={switch.alive=1..}]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/fish_fight/process_end
execute if score #fish_fight_seconds switch.data matches 600.. run function switch:modes/fish_fight/process_end

