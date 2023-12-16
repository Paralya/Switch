
## Input macro: path = "all.modes.pitch_creep.played", label = "Parties jouées\n", mode = 1
## Ex: execute positioned ~ 70.5 ~ run function switch:stats/display/tick_macro {path:"all.modes.minigolf.played",label:"Parties jouées",mode:1}
# mode = 1 : path leading to an array, mode = 2 : path leading to a value
#
# scoreboard value "#display_$(path) switch.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby switch.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby switch.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Set scoreboard values
$scoreboard players set #mode switch.data $(mode)
scoreboard players set #player_nearby switch.data 0
#execute if score #mode switch.data matches 1 if entity @a[distance=..12] run scoreboard players set #player_nearby switch.data 1
execute if score #mode switch.data matches 2 if entity @a[distance=..24] run scoreboard players set #player_nearby switch.data 1
execute if score #mode switch.data matches 3 if entity @a[distance=..24] run scoreboard players set #player_nearby switch.data 1
execute if score #mode switch.data matches 3 run scoreboard players set #mode switch.data 1
scoreboard players set #display_nearby switch.data 0
$execute if score #display_$(path) switch.data matches 1 if entity @e[tag=$(path),limit=1,distance=..1] run scoreboard players set #display_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if score #display_nearby switch.data matches 0 run scoreboard players set #display_$(path) switch.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run kill @e[tag=$(path),limit=1,distance=..1]
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run scoreboard players set #display_$(path) switch.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby switch.data matches 1 if score #display_nearby switch.data matches 0 run function switch:stats/display/summon {path:"$(path)",label:"$(label)"}

