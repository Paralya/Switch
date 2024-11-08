
#> switch:translations/modes_infected_secrets_ancienne_egypte_next_state
#
# @within	switch:modes/infected/secrets/ancienne_egypte/next_state
#

# French
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oh, un passage s'est ouvert !"}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Un texte arabe, qu'est-ce qu'il veut bien dire ?"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ah, un autre texte arabe, ça a l'air de traiter d'un volcan soudainement apparu proche d'un cimetière il y a une dizaine d'années, tous les habitants dans les villages autour ont été évacués..."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est très étrange, il faut qu'on cherche ce volcan, c'est notre seul piste pour comprendre l'origine de l'infection."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Allez, c'est parti, on se dirige vers notre prochaine destination !"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oh, a passage has opened!"}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Arabic text, what does it mean?"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ah, another Arabic text, It seems to talk about about a volcano that suddenly appeared near a cemetery about ten years ago, all the inhabitants in the surrounding villages were evacuated..."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> This is very strange, we have to look for this volcano, it's our only lead to understand the origin of the infection."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Come on, let's head for our next destination!"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]

