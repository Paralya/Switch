
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #block_party_ticks switch.data 1

# Death system (every player below y=121 is killed)
execute as @a[gamemode=adventure,sort=random] at @s if entity @s[y=0,dy=121] run function switch:modes/block_party/death

# Summon a marker if players are on the ground
execute if score #block_party_seconds switch.data matches 0.. as @a[gamemode=adventure] at @s run function switch:modes/block_party/is_on_ground

# Manage destruction of blocks
execute as @e[tag=switch.block_party,scores={switch.data=6..}] at @s run function switch:modes/block_party/destroy_block
scoreboard players add @e[tag=switch.block_party] switch.data 1

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=adventure]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/block_party/process_end
execute if score #block_party_seconds switch.data matches 300.. run function switch:modes/block_party/process_end


