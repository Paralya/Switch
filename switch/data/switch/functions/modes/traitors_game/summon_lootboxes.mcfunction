
# Get player count
execute store result score #count switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 6.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 10.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 14.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 18.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 22.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 26.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 30.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}

# Spreadplayers
execute as @e[type=chest_minecart,tag=switch.new] run function switch:maps/spread_one_player
tag @e[type=chest_minecart,tag=switch.new] remove switch.new

# Tellraw & playsound
execute unless score #count switch.data matches 6.. run tellraw @a[tag=!detached] [{"text":"Une lootbox est apparue !","color":"green"}]
execute if score #count switch.data matches 6.. run tellraw @a[tag=!detached] [{"text":"Plusieurs lootboxes sont apparues !","color":"green"}]
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

