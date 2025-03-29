
#> switch:player/easter_egg
#
# @within	switch:player/easter_egg_give {tag:\"switch.easter_egg.cc_001001\"}"}},{"text":"tu veux voir ma"},{"text":"000101"}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.pi\"}"}},{"text":""},{"text":""}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.ping\"}"}},{"text":""},{"text":""}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.pong\"}"}},{"text":""},{"text":""}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.42\"}"}},{"text":"vie"},{"text":""}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.ayjaraQ\"}"}},{"text":""},{"text":""}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.luxium\"}"}},{"text":""},{"text":""}]}}]
#			switch:player/easter_egg_give {tag:\"switch.easter_egg.friends_cube\"}"}},{"text":""},{"text":""}]}}]
#

# Tak

# Liste des easter eggs : 
# - $(tag) ; Texte qui s'affiche ; Panneau
# - switch.easter_egg.cc_001001 ; Coucou, tu veux voir ma 01001100 ; same
# - switch.easter_egg.pi ; 3.141895 ; plus de décimales
# - switch.easter_egg.ping ; Ping ; Pong
# - switch.easter_egg.pong ; Pong ; Ping
# - switch.easter_egg.42 ; 42 ; La réponse à la vie
# - switch.easter_egg.ayjaraQ ; ayjaraQ ; A long time ago
# - switch.easter_egg.luxium ; Luxium ; in a galaxy far, 
# - switch.easter_egg.friends_cube ; Friends Cube ; far away


$tag @s add $(tag).temp


# Si la personne a déjà cliqué sur un easter egg, on lui affiche un message
execute if entity @s[tag=switch.easter_egg.cc_001001.temp,tag=switch.easter_egg.cc_001001] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.pi.temp,tag=switch.easter_egg.pi] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.ping.temp,tag=switch.easter_egg.ping] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.pong.temp,tag=switch.easter_egg.pong] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.42.temp,tag=switch.easter_egg.42] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.ayjaraQ.temp,tag=switch.easter_egg.ayjaraQ] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.luxium.temp,tag=switch.easter_egg.luxium] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.friends_cube.temp,tag=switch.easter_egg.friends_cube] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]



# Si la personne clique sur un easter egg, on lui affiche un message
execute if entity @s[tag=switch.easter_egg.cc_001001.temp] run tellraw @s ["",{"text":"Coucou, tu veux voir ma 01001100 ?","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.pi.temp] run tellraw @s ["",{"text":"3.141592653589793238462643383279...","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.ping.temp] run tellraw @s ["",{"text":"Ping","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.pong.temp] run tellraw @s ["",{"text":"Pong","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.42.temp] run tellraw @s ["",{"text":"42","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.ayjaraQ.temp] run tellraw @s ["",{"text":"ayjaraQ","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.luxium.temp] run tellraw @s ["",{"text":"Luxium","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.friends_cube.temp] run tellraw @s ["",{"text":"Friends Cube","color":"gold"}]



# Si la personne clique pour la première fois sur un easter egg, on lui ajoute un point
execute unless entity @s[tag=switch.easter_egg.cc_001001] if entity @s[tag=switch.easter_egg.cc_001001.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.pi] if entity @s[tag=switch.easter_egg.pi.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.ping] if entity @s[tag=switch.easter_egg.ping.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.pong] if entity @s[tag=switch.easter_egg.pong.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.42] if entity @s[tag=switch.easter_egg.42.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.ayjaraQ] if entity @s[tag=switch.easter_egg.ayjaraQ.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.luxium] if entity @s[tag=switch.easter_egg.luxium.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.friends_cube] if entity @s[tag=switch.easter_egg.friends_cube.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1



tellraw @s[scores={switch.lobby_easter_egg_counter=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu as trouvé un easter egg sur 8 !","color":"green"}]
tellraw @s[scores={switch.lobby_easter_egg_counter=2..}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu as trouvé ","color":"green"},{"score":{"name":"@s","objective":"switch.lobby_easter_egg_counter"},"color":"gold"},{"text":" easter eggs sur 8 !","color":"green"}]



$tag @s remove $(tag).temp
$tag @s add $(tag)

