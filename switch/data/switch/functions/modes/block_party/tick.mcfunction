
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #block_party_ticks switch.data 1

# Death system
execute as @a[gamemode=adventure,sort=random] at @s if block ~ ~ ~ moving_piston run function switch:modes/block_party/death



## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=adventure]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/block_party/process_end
execute if score #block_party_seconds switch.data matches 600.. run function switch:modes/block_party/process_end


