
## Fonction executée tous les ticks lorsque le mode de jeu est activé


## Death system
execute as @a[gamemode=!spectator,sort=random] at @s if block ~ ~ ~ moving_piston run function switch:modes/moutron/death


# Force riding the kart
execute as @a[gamemode=adventure] at @s run ride @s mount @e[tag=shopping_kart.kart,predicate=!shopping_kart:have_player_passenger,sort=nearest,limit=1]

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=!spectator]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/moutron/process_end
execute if score #moutron_seconds switch.data matches 600.. run function switch:modes/moutron/process_end


