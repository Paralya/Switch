
# Tirage au sort du bonus pour les visibles
execute store result score #random switch.data run random value 0..5

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
execute if score #random switch.data matches 3 run effect give @a[tag=!detached,team=switch.temp.visible] absorption 15 1 true
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound entity.frog.hurt ambient @s
execute if score #random switch.data matches 3 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet d'absorption !","color":"white"},{"text":"\n "}]

# si le score est 4, on résucite un visible
execute if score #random switch.data matches 4 as @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=0}] run function switch:modes/spectres_game/death/revive_visible
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #random switch.data matches 4 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Un visible décédé a retrouvé la vie !","color":"red"},{"text":"\n "}]

# si le score est 5, on donne un effet de résistance aux visibles
execute if score #random switch.data matches 5 run effect give @a[tag=!detached,team=switch.temp.visible] resistance 35 0 true
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound entity.generic.drink ambient @s
execute if score #random switch.data matches 5 run tellraw @a[tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Les visibles ont obtenu un effet de résistance !","color":"white"},{"text":"\n "}]

# on reset le score de break obsidian
scoreboard players set @s switch.break_obsidian 0