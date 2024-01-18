
# Tutorial stuff
execute if score @s switch.tutorial matches 5 run scoreboard players set @s switch.tutorial 6

tellraw @s[scores={switch.trigger.help=-11..}] ["\n",{"nbt":"ParalyaHelp","storage":"switch:main","interpret":true},{"text":" Page d'aide n°1/1 :"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/money : ","color":"yellow"},{"text":"Affiche votre argent actuel"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/shop : ","color":"yellow"},{"text":"Accède à la boutique"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/detach : ","color":"yellow"},{"text":"Vous détache du moteur Switch"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/attach : ","color":"yellow"},{"text":"Vous re-attache au moteur Switch"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/stats : ","color":"yellow"},{"text":"Affiche vos statistiques"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/succes : ","color":"yellow"},{"text":"Affiche l'intégralité des succès"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/rating : ","color":"yellow"},{"text":"Affiche les notes des mini-jeux"}]
tellraw @s[scores={switch.trigger.help=-11..}] ["",{"text":"➤ ","color":"gold"},{"text":"/night_vision : ","color":"yellow"},{"text":"Permet de toggle l'effet Night Vision"}]
tellraw @s ""

scoreboard players set @s switch.trigger.help 0

