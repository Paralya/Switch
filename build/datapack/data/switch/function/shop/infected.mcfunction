
#> switch:shop/infected
#
# @within	switch:shop/trigger
#

# Start

# Init scoreboard
scoreboard players add @s switch.infected.sword 0
scoreboard players add @s switch.infected.armor 0
scoreboard players add @s switch.infected.antidote 0
scoreboard players add @s switch.infected.zombie_speed 0
scoreboard players add @s switch.infected.zombie_jump 0
scoreboard players add @s switch.infected.zombie_strength 0
execute if score @s switch.trigger.shop matches 200 run playsound block.note_block.bell ambient @s

## Humain
# Sword
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Armor
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 4 if score @s switch.money matches 800.. store success score #success switch.data run scoreboard players remove @s switch.money 800
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Antidote
execute if score @s switch.trigger.shop matches 203 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.antidote 1
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

## Zombie
# Speed
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Strength
execute if score @s switch.trigger.shop matches 212 if score @s switch.infected.zombie_strength matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 212 if score @s switch.infected.zombie_strength matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 212 if score @s switch.infected.zombie_strength matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 212 if score @s switch.infected.zombie_strength matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Jump
execute if score @s switch.trigger.shop matches 213 if score @s switch.infected.zombie_jump matches 0 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_jump 1
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Messages
function switch:translations/shop_infected

