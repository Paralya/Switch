
#> switch:modes/murder_mystery/second
#
# @within	switch:modes/murder_mystery/calls/second
#

# Timer
scoreboard players add #murder_mystery_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/murder_mystery/xp_bar

# Annonce des rôles
execute if score #murder_mystery_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.0 with bow[unbreakable={},custom_name='{"text":"Arc du Détective","color":"green","italic":false}',lore=['{"text":"5 secondes pour recharger","color":"gray","italic":false}'],custom_data={switch:{detective_bow:true}}]
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.8 with arrow
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] if data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.1 with golden_sword[custom_data={switch:{murder_knife:true}},unbreakable={show_in_tooltip:0b},attribute_modifiers={modifiers:[{type:"attack_damage",slot:"mainhand",id:"switch.weapon",amount:11111111,operation:"add_value"}],show_in_tooltip:0b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1024}]
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] unless data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.0 with golden_sword[custom_data={switch:{murder_knife:true}},unbreakable={show_in_tooltip:0b},attribute_modifiers={modifiers:[{type:"attack_damage",slot:"mainhand",id:"switch.weapon",amount:11111111,operation:"add_value"}],show_in_tooltip:0b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1024}]
execute if score #murder_mystery_seconds switch.data matches 0 run scoreboard players set @a[scores={switch.temp.role=3}] switch.temp.throw_reload 0

# Summon gold ingots if low amount (~3 gold per player)
execute as @e[type=item,tag=switch.gold] at @s if block ~ ~-1 ~ barrier run kill @s
execute store result score #gold_count switch.data if entity @e[type=item,tag=switch.gold]
execute store result score #player_count switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #gold_count switch.data *= #100 switch.data
scoreboard players operation #gold_count switch.data /= #player_count switch.data
execute if score #murder_mystery_seconds switch.data matches 0.. if score #gold_count switch.data matches ..300 run function switch:modes/murder_mystery/summon_gold

# Reload detective bow
execute as @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{switch:{detective_bow:true}}}}]}] unless data entity @s Inventory[{id:"minecraft:arrow"}] run scoreboard players add #detective_reload switch.data 1
execute if score #detective_reload switch.data matches 5.. run give @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{switch:{detective_bow:true}}}}]}] arrow
execute if score #detective_reload switch.data matches 5.. run scoreboard players set #detective_reload switch.data 0

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
execute if score #murder_mystery_seconds switch.data matches 0 store result score #nb_murderers switch.data if entity @a[tag=!detached,scores={switch.temp.role=3}]
function switch:translations/modes_murder_mystery_second

# Track nearest player with compass
execute if score #murder_mystery_seconds switch.data matches 60.. as @a[scores={switch.temp.role=3}] at @s run function switch:modes/murder_mystery/compass

