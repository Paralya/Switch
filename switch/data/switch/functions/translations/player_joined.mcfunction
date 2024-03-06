
# French
execute unless score @s switch.reconnect matches -600.. run tellraw @s[scores={switch.lang=0}] [{"text":"\nVous avez été détaché car votre dernière connexion date de plus de 10 minutes, tapez '/changelog' si vous souhaitez voir les derniers changements ou '/attach' pour rejoindre le moteur Switch\n","color":"gold"}]

# English
execute unless score @s switch.reconnect matches -600... run tellraw @s[scores={switch.lang=1}] [{"text":"\nYou have been detached because your last connection was more than 10 minutes ago, type '/changelog' if you wish to see the latest changes or '/attach' to join the Switch engine", "color": "gold"}]

