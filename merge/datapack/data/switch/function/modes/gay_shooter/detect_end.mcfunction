
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=adventure,team=switch.temp.gays] unless entity @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] unless entity @a[tag=!detached,gamemode=adventure,team=switch.temp.gays] run scoreboard players set #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=adventure] run scoreboard players set #game_state switch.data 3
execute if score #gay_shooter_seconds switch.data matches 300.. run scoreboard players set #game_state switch.data 4

# 1 = que des gays
# 2 = que des shooters
# 3 = Plus personne
# 4 = Temps écoulé

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #gay_shooter_seconds switch.data 100000

# Cas des vainqueurs
function switch:translations/modes_gay_shooter_detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=adventure,team=switch.temp.gays] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #gay_shooter_seconds switch.data matches 300.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

