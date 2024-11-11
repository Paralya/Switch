
#> switch:shop/infected
#
# @within	switch:shop/trigger
#

## File attribut: Ignore translations

# Sword
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 6 if score @s switch.money matches 350.. store success score #success switch.data run scoreboard players remove @s switch.money 350
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 7 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 8 if score @s switch.money matches 450.. store success score #success switch.data run scoreboard players remove @s switch.money 450
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Armor
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 6 if score @s switch.money matches 350.. store success score #success switch.data run scoreboard players remove @s switch.money 350
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 7 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 8 if score @s switch.money matches 450.. store success score #success switch.data run scoreboard players remove @s switch.money 450
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 9 if score @s switch.money matches 500.. store success score #success switch.data run scoreboard players remove @s switch.money 500
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Zombie speed
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 6 if score @s switch.money matches 350.. store success score #success switch.data run scoreboard players remove @s switch.money 350
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 7 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 8 if score @s switch.money matches 450.. store success score #success switch.data run scoreboard players remove @s switch.money 450
execute if score @s switch.trigger.shop matches 203 if score @s switch.infected.zombie_speed matches 9 if score @s switch.money matches 500.. store success score #success switch.data run scoreboard players remove @s switch.money 500
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Zombie strength
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 6 if score @s switch.money matches 350.. store success score #success switch.data run scoreboard players remove @s switch.money 350
execute if score @s switch.trigger.shop matches 204 if score @s switch.infected.zombie_strength matches 7 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 204 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 204 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 204 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Zombie jump height
execute if score @s switch.trigger.shop matches 205 if score @s switch.infected.zombie_jump matches 0 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 205 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_jump 1
execute if score @s switch.trigger.shop matches 205 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 205 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Messages
execute if score @s switch.trigger.shop matches 200 run playsound block.note_block.bell ambient @s
function switch:translations/shop_infected

