
# Jukebox
execute if score #infected_secret switch.data matches 0 run playsound block.piston.contract ambient @a[tag=!detached,distance=..10]
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oh, un passage s'est ouvert !"}]
execute if score #infected_secret switch.data matches 0 run setblock 128069 119 128085 air

# Redstone torch
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Un texte arabe, qu'est-ce qu'il veut bien dire ?"}]

# Sacrifice room
execute if score #infected_secret switch.data matches 2 positioned 128054 113 128050 run playsound block.piston.contract ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 2 run setblock 128054 113 128050 redstone_torch
execute if score #infected_secret switch.data matches 2 run setblock 128057 109 128054 redstone_wall_torch[facing=west]

# End (After secret room): function executed as a player
execute if score #infected_secret switch.data matches 3.. run advancement grant @s only switch:visible/51
execute if score #infected_secret switch.data matches 3.. run function switch:modes/infected/secrets/check_if_all_secrets
execute if score #infected_secret switch.data matches 3 run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ah, un autre texte arabe, j'ai l'impression qu'il traite un volcan soudainement apparu proche d'un cimetière il y a une dizaine d'années, tous les habitants dans les villages autour ont été évacués..."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est très étrange, il faut qu'on cherche ce volcan, c'est notre seul piste pour comprendre l'origine de l'infection."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Allez, c'est parti, on se dirige vers notre prochaine destination !"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]

# Next state
scoreboard players add #infected_secret switch.data 1

