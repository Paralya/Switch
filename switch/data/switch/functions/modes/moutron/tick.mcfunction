
## Fonction executée tous les ticks lorsque le mode de jeu est activé


## Death system
#execute as @a[gamemode=!spectator,sort=random] at @s if block ~ ~ ~ moving_piston run function switch:modes/moutron/death

# At each shopping kart, summon a new marker
execute if score #moutron_seconds switch.data matches 0.. as @e[tag=shopping_kart.kart] at @s run function switch:modes/moutron/summon_marker

# For each marker, increase their score, place a block and remove it after "life_time" ticks
execute as @e[type=marker,tag=switch.moutron_marker] at @s run function switch:modes/moutron/marker_tick

# Force riding the kart
execute as @a[gamemode=adventure] at @s run ride @s mount @e[tag=shopping_kart.kart,predicate=!shopping_kart:have_player_passenger,sort=nearest,limit=1]

# If a kart is below 300 for engine, kill it and the player
execute if score #moutron_seconds switch.data matches 0.. as @e[tag=shopping_kart.kart,scores={shopping_kart.engine=..300}] run function switch:modes/moutron/kill_kart

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=!spectator]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/moutron/process_end
execute if score #moutron_seconds switch.data matches 600.. run function switch:modes/moutron/process_end

