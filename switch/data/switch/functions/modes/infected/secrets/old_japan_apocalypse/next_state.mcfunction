
# Open the bunker door
execute if score #infected_secret switch.data matches 0 run playsound block.iron_door.open ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 0 run tellraw @a[tag=!detached] [{"text":"Une porte s'est ouverte...","color":"gray","italic":true}]

# Radio dialogue
execute if score #infected_secret switch.data matches 1 run tellraw @a[tag=!detached] [{"text":"[Radio] Pshhhhhhhhhhhhhhhhhhhhh...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 1 run scoreboard players set #infected_radio switch.data 1300
execute if score #infected_secret switch.data matches 2 run tellraw @a[tag=!detached] [{"text":"[Radio] - Breaking news! la planète est, en ce moment même, bombardée par des météorites de nature inconnues !","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[tag=!detached] [{"text":"[Radio] Les scientifiques pensent que ces météorites sont composées d'un minerai inconnu ayant des propriétés étranges...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[tag=!detached] [{"text":"[Radio] Restez chez vous, ne sortez surtout pas, les équipes de secours de votre zone devraient arriver.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[tag=!detached] [{"text":"[Radio] Pshhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 6 run tellraw @a[tag=!detached] [{"text":"[Radio] On me dit dans l'oreillette que ce sont les mêmes météorites qui ont frappé l'Ukraine il y a quelques dizaines d'années...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[tag=!detached] [{"text":"[Radio] Pshhhhhhh...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 7 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 8 run tellraw @a[tag=!detached] [{"text":"[Radio] Une équipe de chercheurs égyptiens ont étudié l'une de ces météorites mais l'équipe entière est portée disparue...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[tag=!detached] [{"text":"[Radio] Depuis ce jour, un volcan a émergé de la météorite mais il est impossible de s'en approcher...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 10 run tellraw @a[tag=!detached] [{"text":"[Radio] Pshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 10 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 11 run tellraw @a[tag=!detached] [{"text":"[Radio] Les services secrets d'Ukraine ont fermé l'accès à la zone de la météorite et ont déclaré que la zone était hautement radioactive...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 12 run tellraw @a[tag=!detached] [{"text":"[Radio] - Mme Connor ! Nous devons arrêter la diffusion, la sécurité nous dit qu'une émeute a éclaté à l'accueil de l'immeuble !","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 13 run tellraw @a[tag=!detached] [{"text":"[Radio] Mme Connor ? Mme Connor ? Il faut qu'on arrê---pshhhhhhhhhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Putain, c'est quoi ce bordel ?! Le studio de radio est pourtant à des kilomètres d'ici !"}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Il faut... il faut trouver un moyen de s'enfuir !"}]
execute if score #infected_secret switch.data matches 14 positioned 129027 104 129014 run playsound block.note_block.imitate.zombie ambient @a[tag=!detached] ~ ~ ~ 1 0.75 1

# Got nether star
execute if score #infected_secret switch.data matches 15 run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ok oui c'est vrai, on a les ressources dans ce village pour construire une balise de détresse afin de signaler notre position aux renforts !"}]

# Placed beacon
execute if score #infected_secret switch.data matches 16 as @p[tag=!detached,team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est bon, la balise est prête !"}]
execute if score #infected_secret switch.data matches 16 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Il ne reste plus qu'à attendre les renforts !"}]

# Humans victory
execute if score #infected_secret switch.data matches 17 run advancement grant @a[team=switch.temp.human] only switch:visible/50
execute if score #infected_secret switch.data matches 17 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est bon, les renforts sont arrivés !"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Si on veut sauver cette planète, nous devons nous en savoir plus sur ces météorites ! Il faut aller consulter les recherches des égyptiens !"}]
execute if score #infected_secret switch.data matches 17 run tellraw @a[tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]

# Next state
scoreboard players add #infected_secret switch.data 1

