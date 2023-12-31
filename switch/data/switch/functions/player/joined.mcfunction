
# On détecte si c'est une reconnexion ou non
scoreboard players set #reconnect switch.data 0
execute store success score #reconnect switch.data if score @s switch.last_total_games = total_games switch.last_total_games

# Si le joueur n'a pas joué depuis plus de 600 secondes, on le détache
scoreboard players operation @s switch.reconnect -= #score switch.reconnect
execute if score @s[tag=!detached] switch.reconnect matches -600.. run function switch:player/make_join
execute unless score @s switch.reconnect matches -600.. run tellraw @s [{"text":"\nVous avez été détaché car votre dernière connexion date de plus de 10 minutes, tapez '/changelog' si vous souhaitez voir les derniers changements\n","color":"gold"}]
execute unless score @s switch.reconnect matches -600.. run function switch:player/trigger/detach/

# Prevent spam
scoreboard players operation @s switch.reconnect = #score switch.reconnect

