
#> switch:modes/fish_fight/axobonus
#
# @within	switch:modes/fish_fight/tick
#

# Tirage au sort du bonus 
execute store result score #random switch.data run random value 0..12

# si le score est 0, on donne un effet de slow falling au détenteur du score axolotl killed
execute if score #random switch.data matches 0 if score #TEAM_FISH switch.data matches 0 run effect give @s slow_falling 25 1 true
execute if score #random switch.data matches 0 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.red] slow_falling 25 1 true
execute if score #random switch.data matches 0 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.blue] slow_falling 25 1 true
execute if score #random switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
execute if score #random switch.data matches 0 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 0 run effect give @s speed 10 0 true


# si le score est 1, on donne un effet de speed au détenteur du score axolotl killed
execute if score #random switch.data matches 1 if score #TEAM_FISH switch.data matches 0 run effect give @s speed 10 1 true
execute if score #random switch.data matches 1 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.red] speed 10 1 true
execute if score #random switch.data matches 1 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.blue] speed 10 1 true
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
execute if score #random switch.data matches 1 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 1 run effect give @s speed 10 0 true

# si le score est 2, on donne 25 blocs au détenteur du score axolotl killed
execute if score #random switch.data matches 2 if score #TEAM_FISH switch.data matches 0 run give @s white_concrete 25
execute if score #random switch.data matches 2 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run give @s red_concrete 25
execute if score #random switch.data matches 2 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run give @s blue_concrete 25
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound entity.item.pickup ambient @s
execute if score #random switch.data matches 2 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 2 run effect give @s speed 10 0 true

# si le score est 3, on augmente son score switch.alive de 1
execute if score #random switch.data matches 3 run scoreboard players add @s[tag=!detached,scores={switch.temp.axolotl_killed=1,switch.alive=..2}] switch.alive 1
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #random switch.data matches 3 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 3 run effect give @s speed 10 0 true

# si le score est 4, on donne un effet de glowing et weakness à tous les joueurs sans le donner au détenteur du score axolotl killed
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] glowing 10 0 true
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] weakness 10 0 true
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[gamemode=!spectator,team=switch.temp.blue] glowing 10 0 true
execute if score #random switch.data matches 4 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[gamemode=!spectator,team=switch.temp.red] weakness 10 0 true
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s
execute if score #random switch.data matches 4 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 4 run effect give @s speed 10 0 true

# si le score est 5, on donne un effet de force au détenteur du score axolotl killed
execute if score #random switch.data matches 5 run effect give @s strength 20 0 true
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
execute if score #random switch.data matches 5 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 5 run effect give @s speed 10 0 true

# si le score est 6, on donne 10 ender pearls au détenteur du score axolotl killed
execute if score #random switch.data matches 6 run give @s ender_pearl 10
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound entity.enderman.teleport ambient @s
execute if score #random switch.data matches 6 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 6 run effect give @s speed 10 0 true

# si le score est 7, on summon pleins d'axolotls
execute if score #random switch.data matches 7 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 130 151026 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 130 151026 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 130 151026 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}

execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155993 152 156013 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155993 152 156013 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155983 164 155995 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #random switch.data matches 7 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155983 164 155995 {Glowing:true,Health:6f,CustomNameVisible:true,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}

execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.axolotl.hurt ambient @s
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.axolotl.splash ambient @s
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #random switch.data matches 7 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 7 run effect give @s speed 10 0 true

# si le score est 8, on summon des puffer fish
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151040 124 151032 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151015 124 151020 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}


execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #random switch.data matches 8 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}


execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound entity.zombie.ambient ambient @s
execute if score #random switch.data matches 8 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 8 run effect give @s speed 10 0 true

# si le score est 9, on donne un effet temporaire de slowness à joueurs
execute if score #random switch.data matches 9 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] slowness 15 1 true
execute if score #random switch.data matches 9 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.blue,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] slowness 15 1 true
execute if score #random switch.data matches 9 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.red,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] slowness 15 1 true
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound entity.pig.ambient ambient @s
execute if score #random switch.data matches 9 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 9 run effect give @s speed 10 0 true

# si le score est 10, on donne un plastron anti kb
execute if score #random switch.data matches 10 run scoreboard players set @s switch.temp.cooldown 100
execute if score #random switch.data matches 10 run item replace entity @s armor.chest with chainmail_chestplate[enchantments={binding_curse:1},attribute_modifiers=[{type:"knockback_resistance",slot:"chest",id:"switch.invulnerable",amount:100,operation:"add_value"}]]
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #random switch.data matches 10 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 10 run effect give @s speed 10 0 true

# si le score est 11, on donne un effet de levitation à tous les joueurs
execute if score #random switch.data matches 11 if score #TEAM_FISH switch.data matches 0 run effect give @a[gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] levitation 9 0 true
execute if score #random switch.data matches 11 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.blue,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] levitation 9 0 true
execute if score #random switch.data matches 11 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.red,gamemode=!spectator,tag=!detached,scores={switch.temp.axolotl_killed=0}] levitation 9 0 true
execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound entity.ender_dragon.growl ambient @s
execute if score #random switch.data matches 11 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 11 run effect give @s speed 10 0 true

#si le score est 12, on donne un effet de jump boost à l'équipe du tueur
execute if score #random switch.data matches 12 if score #TEAM_FISH switch.data matches 0 run effect give @s jump_boost 8 1 true
execute if score #random switch.data matches 12 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[team=switch.temp.red] jump_boost 8 1 true
execute if score #random switch.data matches 12 if score #TEAM_FISH switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[team=switch.temp.blue] jump_boost 8 1 true
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound entity.drink ambient @s
function switch:translations/modes_fish_fight_axobonus
execute if score #random switch.data matches 12 run effect give @s regeneration 8 1 true
execute if score #random switch.data matches 12 run effect give @s speed 10 0 true


# on reset le score d'axolo_killed
scoreboard players set @s switch.temp.axolotl_killed 0

