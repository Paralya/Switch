
clear @s
loot replace entity @s armor.head loot switch:get_username
scoreboard players set #record switch.data 0
execute store result score #record switch.data run data get storage switch:records block_party.round
execute if score #block_party_round switch.data > #record switch.data store result storage switch:records block_party.round int 1 run scoreboard players get #block_party_round switch.data
execute if score #block_party_round switch.data > #record switch.data run data modify storage switch:records block_party.player set from entity @s Inventory[0].tag.SkullOwner.Name
execute if score #block_party_round switch.data > #record switch.data as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
execute if score #block_party_round switch.data > #record switch.data run function switch:modes/block_party/record_tellraw with storage switch:records block_party

