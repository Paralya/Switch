
#> switch:modes/spectres_game/obsidian_effect
#
# @within	switch:modes/spectres_game/tick
#

# Tirage au sort du bonus pour les visibles
execute store result score #random switch.data run random value 0..12

# si le score est 0, on donne un effet de heal aux visibles
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] instant_health 1 1 true
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.spectre] regeneration 5 1 true
execute if score #random switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 1, on donne un effet de speed aux visibles ou spectre
execute if score #random switch.data matches 1 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] speed 12 1 true
execute if score #random switch.data matches 1 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.spectre] speed 12 1 true
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s

# si le score est 2, on donne deux pommes d'or aux visibles ou spectre
execute if score #random switch.data matches 2 if entity @s[team=switch.temp.visible] run give @a[tag=!detached,team=switch.temp.visible] golden_apple 1
execute if score #random switch.data matches 2 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] golden_apple 1
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound entity.eat ambient @s

# si le score est 3, on donne un effet d'absorption aux visibles ou spectre
execute if score #random switch.data matches 3 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] absorption 25 1 true
execute if score #random switch.data matches 3 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.spectre] absorption 25 1 true
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s

# si le score est 4, on résucite un visible ou on donne 5 tnt à chaque spectres
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.visible] as @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=0}] run function switch:modes/spectres_game/death/revive_visible
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] tnt 5
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

# si le score est 5, on donne un effet de résistance aux visibles ou donner deux oeufs de creeper à chaque visible
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] resistance 33 0 true
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] creeper_spawn_egg 2
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] zombie_villager_spawn_egg 2
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 6, on donne un effet d'invisibilité aux visibles ou on summon 3 golems de fer
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] invisibility 25 0 true
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {Tags:["switch.new"]}
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {Tags:["switch.new"]}
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {Tags:["switch.new"]}
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] as @e[type=iron_golem,tag=switch.new] run function switch:maps/spread_one_player
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 7, on téléporte tous les visibles sur l'un des visibles
execute if score #random switch.data matches 7 run teleport @a[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}] @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}]
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.enderman.teleport ambient @s

# si le score est 8, on donne 10 flèches à tous les visibles
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.visible] run give @a[tag=!detached,team=switch.temp.visible] arrow 10
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] spectral_arrow 10
execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound entity.arrow.shoot ambient @s


# si le score est 9, on donne un effet temporaire de slowness à tous les spectres
execute if score #random switch.data matches 9 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.spectre] slowness 21 1 true
execute if score #random switch.data matches 9 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.visible] slowness 21 1 true
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s

# si le score est 10, on donne un effet temporaire de glowing à tous les spectres ou un effet temporaire de poison à tous les visibles
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.spectre] glowing 3 0 true
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.visible] poison 8 0 true
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s

# si le score est 11, un visible aléatoire obtient un effet de glowing ainsi qu'un puissant effet d'absorption et de vitesse
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run scoreboard objectives add switch.temp.puissant dummy
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run scoreboard players set @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}] switch.temp.puissant 1
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run effect give @a[scores={switch.temp.puissant=1}] glowing 20 1 true
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run effect give @a[scores={switch.temp.puissant=1}] absorption 25 2 true
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run effect give @a[scores={switch.temp.puissant=1}] speed 25 1 true
#supprimer l'objectif puissant
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run scoreboard objectives remove switch.temp.puissant
#effet si c'est un spectre
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.visible] blindness 8 1 true

execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

#si le score est 12, on donne un effet de water breathing aux visibles
execute if score #random switch.data matches 12 run effect give @a[tag=!detached,team=switch.temp.visible] water_breathing 40 0 true
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound block.water.ambient ambient @s
function switch:translations/modes_spectres_game_obsidian_effect


# on reset le score de break obsidian
scoreboard players remove @s switch.temp.break_obsidian 1

