
# Timer
scoreboard players add #murder_mystery_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/murder_mystery/xp_bar

# Annonce des rôles
execute if score #murder_mystery_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[tag=!detached] title {"text":"Vous êtes"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.temp.role=1}] subtitle {"text":"Innocent","color":"green"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.temp.role=2}] subtitle {"text":"Detective","color":"aqua"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.temp.role=3}] subtitle {"text":"Murderer","color":"red"}
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.0 with bow{Unbreakable:1b,switch:{detective_bow:1b},display:{Name:'{"text":"Arc du Détective","color":"green","italic":false}',Lore:['{"text":"5 secondes pour recharger","color":"gray","italic":false}']}}
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.8 with arrow
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] if data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.1 with golden_sword{HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:11111111,Operation:0,UUID:[I;507326914,582437805,-1847943590,-796103056],Slot:"mainhand"}]}
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] unless data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.0 with golden_sword{HideFlags:255,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:11111111,Operation:0,UUID:[I;507326914,582437805,-1847943590,-796103056],Slot:"mainhand"}]}
execute if score #murder_mystery_seconds switch.data matches 0 run item replace entity @a[tag=!detached] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003,Unbreakable:1b,display:{Name:'{"text":"Don\'t touch, right click detection","color":"gray","italic":false}'}}
execute if score #murder_mystery_seconds switch.data matches 0 run scoreboard players set @a[scores={switch.temp.role=3}] switch.temp.throw_reload 0

# Summon gold ingots if low amount (~3 gold per player)
execute store result score #gold_count switch.data if entity @e[type=item,tag=switch.gold]
execute store result score #player_count switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #gold_count switch.data *= #100 switch.data
scoreboard players operation #gold_count switch.data /= #player_count switch.data
execute if score #murder_mystery_seconds switch.data matches 0.. if score #gold_count switch.data matches ..300 run function switch:modes/murder_mystery/summon_gold

# Reload detective bow
execute as @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{tag:{switch:{detective_bow:1b}}}]}] unless data entity @s Inventory[{id:"minecraft:arrow"}] run scoreboard players add #detective_reload switch.data 1
execute if score #detective_reload switch.data matches 5 run give @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{tag:{switch:{detective_bow:1b}}}]}] arrow
execute if score #detective_reload switch.data matches 5 run scoreboard players set #detective_reload switch.data 0

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
execute if score #remaining_time switch.data matches 0.. if score #murder_mystery_seconds switch.data matches 0.. run title @a[tag=!detached] actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

# Track nearest player with compass
execute if score #murder_mystery_seconds switch.data matches 60.. as @a[scores={switch.temp.role=3}] at @s run function switch:modes/murder_mystery/compass

