
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Scénarios activés :"}]
execute if score #sc_solitaire switch.data matches 1 run tellraw @a[tag=!detached] [{"text":"➤ Innocent solitaire","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Au bout d'une minute, un innocent aléatoire est désigné comme solitaire.\nIl peut être le ninja ou un innocent basique.\nLors de sa mort, il n'est pas affiché comme solitaire.","color":"gray"}]}}]
execute if score #sc_floupy switch.data matches 1 run tellraw @a[tag=!detached] [{"text":"➤ Floupy","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Le rôle 'Floupy' permet de voler le rôle de celui qu'il tue.\nLa deuxième vie du ninja est annulée en cas de vol.\nLe rôle de la victime est obfusqué.","color":"gray"}]}}]
execute if score #sc_silencieux switch.data matches 1 run tellraw @a[tag=!detached] [{"text":"➤ Silencieux","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Il y a 1/2 chance que le rôle d'un joueur ne soit pas affiché lors de sa mort.\nN'affecte pas les messages de l'inspecteur.\nLe scoreboard à droite est gelé.","color":"gray"}]}}]
execute if score #sc_silencieux switch.data matches 1 run scoreboard objectives modify switch.temp.sidebar displayname {"text":"Rôles de départ","color":"gold"}

