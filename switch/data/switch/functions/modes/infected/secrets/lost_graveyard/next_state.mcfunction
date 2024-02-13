
# First zombie kill near the hidden meteorite in the volcano
execute if score #infected_secret switch.data matches 0 run playsound entity.experience_orb.pickup ambient @a[tag=!detached,distance=..10] ~ ~ ~ 1 0
execute if score #infected_secret switch.data matches 0 run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Bizarre, on dirait que ce pot accumule les âmes des zombies que je tue !"}]
execute if score #infected_secret switch.data matches 0 run particle soul ~ ~ ~ 0.35 0.5 0.35 0.02 25

# Fifth zombie killed, open the door and summon creepers and zombies
execute if score #infected_secret switch.data matches 2 run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ahhh, le pot vient d'éclater, la puissance était tellment grande que la porte s'est vue détruite !"}]
execute if score #infected_secret switch.data matches 2 run fill 127123 113 127050 127124 115 127052 air destroy
execute if score #infected_secret switch.data matches 2 positioned 127132 113 127051 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon creeper
execute if score #infected_secret switch.data matches 2 positioned 127132 113 127051 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon zombie

# Crafted TNT
execute if score #infected_secret switch.data matches 3 run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ok, j'ai réussi à fabriquer une TNT avec le sable et la poudre des creepers, on peut aller faire péter ce foutu minerai !"}]
execute if score #infected_secret switch.data matches 3 run gamerule doTileDrops false

# TNT exploded (end)
execute if score #infected_secret switch.data matches 4 unless score #test_mode switch.data matches 1 run advancement grant @a[team=switch.temp.human] only switch:visible/52
execute if score #infected_secret switch.data matches 4 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est bon, le minerai est détruit !"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Il n'y a plus qu'une seule chose à faire, c'est de survivre jusqu'à ce que nos renforts arrivent afin d'aller étudier ce minerai au méga-laboratoire !"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run kill @e[tag=stardust.nether_stardust_ore]
execute if score #infected_secret switch.data matches 4 run function switch:modes/infected/secrets/drop_element_115

# Next state
scoreboard players add #infected_secret switch.data 1

