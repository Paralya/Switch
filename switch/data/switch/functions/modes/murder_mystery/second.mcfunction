
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Timer
scoreboard players add #murder_mystery_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Annonce des rôles
execute if score #murder_mystery_seconds switch.data matches 0 as @a at @s run playsound entity.player.levelup ambient @s
execute if score #murder_mystery_seconds switch.data matches 0 run title @a title {"text":"Vous êtes"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.temp.role=1}] subtitle {"text":"Innocent","color":"green"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.temp.role=2}] subtitle {"text":"Detective","color":"aqua"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.temp.role=3}] subtitle {"text":"Murderer","color":"red"}
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.0 with bow{Unbreakable:1b,switch:{detective_bow:1b},display:{Name:'{"text":"Arc du Détective","color":"green","italic":false}'}}
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.8 with arrow
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] if data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.1 with golden_sword{HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:11111111,Operation:0,UUID:[I;507326914,582437805,-1847943590,-796103056],Slot:"mainhand"}]}
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] unless data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.0 with golden_sword{HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:11111111,Operation:0,UUID:[I;507326914,582437805,-1847943590,-796103056],Slot:"mainhand"}]}

# Summon gold ingots if less than 20
scoreboard players set #gold_count switch.data 0
execute store result score #gold_count switch.data if entity @e[type=item,tag=switch.gold]
execute if score #murder_mystery_seconds switch.data matches 0.. if score #gold_count switch.data matches ..19 run function switch:modes/murder_mystery/summon_gold

# Reload detective bow
execute as @a[gamemode=!spectator,nbt={Inventory:[{switch:{detective_bow:1b}}]}] unless data entity @s Inventory[{id:"minecraft:arrow"}] run scoreboard players add #detective_reload switch.data 1
execute if score #detective_reload switch.data matches 5 run give @a[gamemode=!spectator,nbt={Inventory:[{switch:{detective_bow:1b}}]}] arrow
execute if score #detective_reload switch.data matches 5 run scoreboard players set #detective_reload switch.data 0

# Give a bow with an arrow for players that have at least 10 golds
execute as @a[gamemode=!spectator,nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run function switch:modes/murder_mystery/tick_ingot

