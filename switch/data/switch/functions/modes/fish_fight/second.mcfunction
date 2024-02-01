
scoreboard players add #fish_fight_seconds switch.data 1

execute if score #fish_fight_seconds switch.data matches 3 as @a[tag=!detached] at @s run function switch:modes/fish_fight/give_items


# spawn axolot
scoreboard players operation #temp switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp switch.data %= #47 switch.data
execute if score #temp switch.data matches 0 run summon axolotl 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] minecraft:glowing 2 2 true
execute if score #temp switch.data matches 0 run tellraw @a[tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Un Axolotl Bonus est apparu ! Tuez le pour obtenir un bonus !"},{"text":"\n "}]
execute if score #temp switch.data matches 0 run execute as @a[tag=!detached] at @s run playsound entity.arrow.hit_player ambient @s

scoreboard players operation #temp switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp switch.data %= #8 switch.data
execute if score #temp switch.data matches 0 run give @a[tag=!detached] white_wool 1