
#> switch:translations/modes_traitors_game_announce_scenarios
#
# @within	switch:modes/traitors_game/announce_scenarios
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Scénarios activés :"}]
execute if score #sc_solitaire switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"➤ Innocent solitaire","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Au bout d'une minute, un innocent aléatoire est désigné comme solitaire.\nIl peut être le ninja ou un innocent basique.\nLors de sa mort, il n'est pas affiché comme solitaire.","color":"gray"}]}}]
execute if score #sc_floupy switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"➤ Floupy","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Le rôle 'Floupy' permet de voler le rôle de celui qu'il tue.\nLa deuxième vie du ninja est annulée en cas de vol.\nLe rôle de la victime est obfusqué.","color":"gray"}]}}]
execute if score #sc_silencieux switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"➤ Silencieux","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Il y a 1/3 chance que le rôle d'un joueur ne soit pas affiché lors de sa mort.\nN'affecte pas les messages de l'inspecteur.\nLe scoreboard à droite est gelé.","color":"gray"}]}}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Scenarios enabled:"}]
execute if score #sc_solitaire switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"➤ Solitary innocent","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"After one minute, a random innocent is designated as the solitaire.\nWhen it dies, it is not displayed as a solitary.","color":"gray"}]}}]
execute if score #sc_floupy switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"➤ Floupy","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"The 'Floupy' role allows you to steal the role of whoever you kill.\nThe victim's role is obfuscated.","color":"gray"}]}}]
execute if score #sc_silencieux switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"➤ Silencer","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"There's a 1/3 chance that a player's role won't be displayed when they die.\nThe scoreboard on the right is frozen.","color":"gray"}]}}]

