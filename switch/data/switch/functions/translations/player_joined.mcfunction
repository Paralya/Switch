
# French
execute unless score @s switch.reconnect matches -600.. run tellraw @s[scores={switch.lang=0}] [{"text":"\nVous avez été détaché car votre dernière connexion date de plus de 10 minutes, tapez '/changelog' si vous souhaitez voir les derniers changements ou '/attach' pour rejoindre le moteur Switch\n","color":"gold"}]

