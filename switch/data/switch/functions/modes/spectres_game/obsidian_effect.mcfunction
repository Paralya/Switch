
# Tirage au sort du bonus pour les visibles
execute store result score #random switch.data run random value 0..12

# si le score est 0, on donne un effet de heal aux visibles
execute if score #random switch.data matches 0 run effect give @a[tag=!detached,team=switch.temp.visible] instant_health 1 1 true
execute if score #random switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.generic.drink ambient @s
execute if score #random switch.data matches 0 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un soin !","color":"white"},{"text":"\n "}]

# si le score est 1, on donne un effet de speed aux visibles
execute if score #random switch.data matches 1 run effect give @a[tag=!detached,team=switch.temp.visible] speed 15 1 true
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s
execute if score #random switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet de vitesse !","color":"white"},{"text":"\n "}]

# si le score est 2, on donne deux pommes d'or aux visibles
execute if score #random switch.data matches 2 run give @a[tag=!detached,team=switch.temp.visible] golden_apple 2
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound entity.generic.eat ambient @s
execute if score #random switch.data matches 2 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu deux pommes d'or !","color":"white"},{"text":"\n "}]

# si le score est 3, on donne un effet d'absorption aux visibles
execute if score #random switch.data matches 3 run effect give @a[tag=!detached,team=switch.temp.visible] absorption 60 1 true
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound entity.frog.hurt ambient @s
execute if score #random switch.data matches 3 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet d'absorption !","color":"white"},{"text":"\n "}]

# si le score est 4, on résucite un visible
execute if score #random switch.data matches 4 as @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=0}] run function switch:modes/spectres_game/death/revive_visible
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #random switch.data matches 4 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Un visible décédé a retrouvé la vie !","color":"light_purple"},{"text":"\n "}]

# si le score est 5, on donne un effet de résistance aux visibles
execute if score #random switch.data matches 5 run effect give @a[tag=!detached,team=switch.temp.visible] resistance 35 0 true
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound entity.generic.drink ambient @s
execute if score #random switch.data matches 5 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet de résistance !","color":"white"},{"text":"\n "}]

# si le score est 6, on donne un effet d'invisibilité aux visibles
execute if score #random switch.data matches 6 run effect give @a[tag=!detached,team=switch.temp.visible] invisibility 25 0 true
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound entity.generic.drink ambient @s
execute if score #random switch.data matches 6 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet d'invisibilité !","color":"white"},{"text":"\n "}]

# si le score est 7, on téléporte tous les visibles sur l'un des visibles
execute if score #random switch.data matches 7 run teleport @a[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}] @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}]
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.enderman.teleport ambient @s
execute if score #random switch.data matches 7 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Tous les visibles ont été téléportés sur l'un d'entre eux !","color":"white"},{"text":"\n "}]

# si le score est 8, on donne 10 flèches à tous les visibles
execute if score #random switch.data matches 8 run give @a[tag=!detached,team=switch.temp.visible] arrow 10
execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound entity.arrow.shoot ambient @s
execute if score #random switch.data matches 8 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu 10 flèches !","color":"white"},{"text":"\n "}]

# si le score est 9, on donne un effet temporaire de slowness à tous les spectres
execute if score #random switch.data matches 9 run effect give @a[tag=!detached,team=switch.temp.spectre] slowness 25 1 true
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s
execute if score #random switch.data matches 9 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les spectres ont obtenu un effet de lenteur !","color":"white"},{"text":"\n "}]

# si le score est 10, on donne un effet temporaire de glowing à tous les spectres
execute if score #random switch.data matches 10 run effect give @a[tag=!detached,team=switch.temp.spectre] glowing 4 0 true
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound entity.enderman.stare ambient @s
execute if score #random switch.data matches 10 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les spectres ont obtenu un effet de glowing !","color":"white"},{"text":"\n "}]

# si le score est 11, un visible aléatoire obtient un effet de glowing ainsi qu'un puissant effet d'absorption et de vitesse
execute if score #random switch.data matches 11 run scoreboard objectives add switch.temp.puissant dummy
execute if score #random switch.data matches 11 run scoreboard players set @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}] switch.temp.puissant 1
execute if score #random switch.data matches 11 run effect give @a[scores={switch.temp.puissant=1}] glowing 20 1 true
execute if score #random switch.data matches 11 run effect give @a[scores={switch.temp.puissant=1}] absorption 25 3 true
execute if score #random switch.data matches 11 run effect give @a[scores={switch.temp.puissant=1}] speed 25 1 true
#supprimer l'objectif puissant
execute if score #random switch.data matches 11 run scoreboard objectives remove switch.temp.puissant
execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #random switch.data matches 11 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Un visible aléatoire est devenu très puissant temporairement !","color":"light_blue"},{"text":"\n "}]

#si le score est 12, on donne un effet de water breathing aux visibles
execute if score #random switch.data matches 12 run effect give @a[tag=!detached,team=switch.temp.visible] water_breathing 40 0 true
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound block.water.ambient ambient @s
execute if score #random switch.data matches 12 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet de respiration aquatique !","color":"white"},{"text":"\n "}]


# on reset le score de break obsidian
scoreboard players set @s switch.break_obsidian 0