
# Get attacker effect chance
scoreboard players set #probability switch.data 0
execute if score #probability switch.data matches 0 on attacker if entity @s[team=switch.temp.spectre] unless score @s switch.spectres_game.sp_arrow_effect matches 1.. run scoreboard players set #probability switch.data 5
execute if score #probability switch.data matches 0 on attacker if entity @s[team=switch.temp.spectre] if score @s switch.spectres_game.sp_arrow_effect matches 1 run scoreboard players set #probability switch.data 10
execute if score #probability switch.data matches 0 on attacker if entity @s[team=switch.temp.spectre] if score @s switch.spectres_game.sp_arrow_effect matches 2 run scoreboard players set #probability switch.data 15
execute if score #probability switch.data matches 0 on attacker if entity @s[team=switch.temp.spectre] if score @s switch.spectres_game.sp_arrow_effect matches 3 run scoreboard players set #probability switch.data 20
execute if score #probability switch.data matches 0 on attacker if entity @s[team=switch.temp.spectre] if score @s switch.spectres_game.sp_arrow_effect matches 4 run scoreboard players set #probability switch.data 25

# Get a random value between 1 and 100 and if random value is lower than attacker effect chance, get a random effect
execute store result score #random switch.data run random value 1..100
scoreboard players set #effect switch.data 0
execute if score #random switch.data <= #probability switch.data store result score #effect switch.data run random value 1..5

# Depending on the effect score, get a random effect
execute if score #effect switch.data matches 1 run effect give @s poison 3 0 true
execute if score #effect switch.data matches 2 run effect give @s slowness 5 0 true
execute if score #effect switch.data matches 3 run effect give @s blindness 5 0 true
execute if score #effect switch.data matches 4 run effect give @s levitation 5 0 true
execute if score #effect switch.data matches 5 run effect give @s nausea 10 0 true

