
#> switch:modes/protect_the_king/detect_end
#
# @within	switch:modes/protect_the_king/tick
#

scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #protect_the_king_seconds switch.data 100000

# Cas des vainqueurs
function switch:translations/modes_protect_the_king_detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win

# Advancements
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 1 unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] only switch:visible/14
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 2 unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] only switch:visible/14
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 1 unless entity @a[tag=!detached,gamemode=spectator,team=switch.temp.red] run advancement grant @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue,team=!switch.temp.blue_king,team=!] only switch:visible/65
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 2 unless entity @a[tag=!detached,gamemode=spectator,team=switch.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red,team=!switch.temp.red_king,team=!] only switch:visible/65

# Visuel de fin de partie
execute if score #protect_the_king_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

