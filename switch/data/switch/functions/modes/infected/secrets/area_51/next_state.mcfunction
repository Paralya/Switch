
# Generator
execute if score #infected_secret switch.data matches 0 run summon lightning_bolt ~ ~-10 ~
execute if score #infected_secret switch.data matches 0 run tellraw @a[tag=!detached] [{"text":"The backup generator is on!","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Le courant est revenu, on peut essayer d'utiliser les machines !"}]
execute if score #infected_secret switch.data matches 0 run setblock 2016 154 1989 redstone_block

# Blood extraction
execute if score #infected_secret switch.data matches 1 run tellraw @a[tag=!detached] [{"text":"Zombie blood extraction in progress...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ok, je crois qu'on doit tenir le temps que ça se fasse."}]
execute if score #infected_secret switch.data matches 1 run playsound block.beacon.power_select ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 1 run scoreboard players set #blood_extraction switch.data 1200
execute if score #infected_secret switch.data matches 2 run tellraw @a[tag=!detached] [{"text":"Zombie blood extraction complete!","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 2 as @r[team=switch.temp.human,distance=..10] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Plus qu'à faire analyser ça avec l'élément 115, en espérant que ça marche..."}]
execute if score #infected_secret switch.data matches 2 run playsound block.brewing_stand.brew ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 2 run setblock 2011 111 2045 water_cauldron[level=3]

# Element analysis
execute if score #infected_secret switch.data matches 3 run tellraw @a[tag=!detached] [{"text":"[ViralQuantumTech] Analysis of, Element 115, and, Zombie Blood, in progress... Please wait 5 minutes.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 3 run playsound block.conduit.activate ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 3 run data modify block 1980 122 1980 Items set value []
execute if score #infected_secret switch.data matches 3 run data modify block 1978 122 1980 Items set value []
execute if score #infected_secret switch.data matches 3 run scoreboard players set #element_analysis switch.data 600
execute if score #infected_secret switch.data matches 4 run tellraw @a[tag=!detached] [{"text":"[ViralQuantumTech] System error: Code 51-ZOM, Error description: The viral synthesis matrix has reached a critical level of instability. The fusion process between element 115 and zombie blood is out of specification.","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[tag=!detached] [{"text":"[ViralQuantumTech] Safe mode activated, analysis restarted...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 5 run tellraw @a[tag=!detached] [{"text":"[ViralQuantumTech] System errrrr: ***** 0x1894915335 0x01519819 0x","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 5 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 6 run tellraw @a[tag=!detached] [{"text":"[ViralQuantumTech] Errrrrrro****************\n***********************************\n05cx1518518\n******fe*fz*115*","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 6 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 7 run tellraw @a[tag=!detached] [{"text":"[ViralQuantumTech] Errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 7 run playsound entity.zombie.break_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 7 run summon tnt 1967 127 1983
execute if score #infected_secret switch.data matches 7 run effect clear @a[tag=!detached] night_vision
execute if score #infected_secret switch.data matches 7 run effect give @a[tag=!detached] darkness 3 0 true
execute if score #infected_secret switch.data matches 7 run fill 2003 108 2037 1997 116 2044 air destroy
execute if score #infected_secret switch.data matches 7 as @a[tag=!detached] at @s run playsound block.beacon.deactivate ambient @s
execute if score #infected_secret switch.data matches 8 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Il s'est passé quoi putain ?! Le courant s'est coupé !"}]
execute if score #infected_secret switch.data matches 8 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> On a tout perdu, on fait quoi maintenant ?!"}]
execute if score #infected_secret switch.data matches 8 as @e[tag=switch.giant] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if score #infected_secret switch.data matches 8 at @e[limit=24] at @e[tag=switch.giant] run summon zombie ~ ~ ~ {Team:"switch.temp.zombie"}

# End (killed the giant)
execute if score #infected_secret switch.data matches 9 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est la merde, il n'y a plus rien sur cette terre qui peut nous sauver."}]
execute if score #infected_secret switch.data matches 9 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> On doit donc vraiment, exterminer, tous les zombies, pour survivre..."}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]
execute if score #infected_secret switch.data matches 9 as @a[team=switch.temp.human] run advancement grant @s only switch:visible/53
execute if score #infected_secret switch.data matches 9 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets

# Next state
scoreboard players add #infected_secret switch.data 1

