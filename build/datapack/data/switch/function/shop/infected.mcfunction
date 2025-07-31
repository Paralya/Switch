
#> switch:shop/infected
#
# @executed	as @a[sort=random] & at @s
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

execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 9 if score @s switch.money matches 500.. store success score #success switch.data run scoreboard players remove @s switch.money 500

execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Sword

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 1 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 2 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 3 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 4 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 5 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 6 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 7 run scoreboard players add @s switch.money 280
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 7 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 8 run scoreboard players add @s switch.money 320
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 8 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 9 run scoreboard players add @s switch.money 360
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 9 store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 10.. run scoreboard players add @s switch.money 400
execute if score @s switch.trigger.shop matches 10201 if score @s switch.infected.sword matches 10.. store success score #success switch.data run scoreboard players remove @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 10201 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

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

# Selling Armor

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 1 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 2 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 3 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 4 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 5 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 6 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 7 run scoreboard players add @s switch.money 280
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 7 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 8 run scoreboard players add @s switch.money 320
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 8 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 9 run scoreboard players add @s switch.money 360
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 9 store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 10.. run scoreboard players add @s switch.money 400
execute if score @s switch.trigger.shop matches 10202 if score @s switch.infected.armor matches 10.. store success score #success switch.data run scoreboard players remove @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 10202 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

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

# Selling Zombie speed

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 1 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 2 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 3 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 4 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 5 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 6 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 7 run scoreboard players add @s switch.money 280
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 7 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 8 run scoreboard players add @s switch.money 320
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 8 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 9 run scoreboard players add @s switch.money 360
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 9 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 10.. run scoreboard players add @s switch.money 400
execute if score @s switch.trigger.shop matches 10203 if score @s switch.infected.zombie_speed matches 10.. store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 10203 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

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

# Selling Zombie strength

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 1 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 2 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 3 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 4 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 5 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 6 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 7 run scoreboard players add @s switch.money 280
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 7 store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 8.. run scoreboard players add @s switch.money 320
execute if score @s switch.trigger.shop matches 10204 if score @s switch.infected.zombie_strength matches 8.. store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 10204 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Zombie jump height

execute if score @s switch.trigger.shop matches 205 if score @s switch.infected.zombie_jump matches 0 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200

execute if score @s switch.trigger.shop matches 205 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_jump 1
execute if score @s switch.trigger.shop matches 205 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 205 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Zombie jump height

execute if score @s switch.trigger.shop matches 10205 if score @s switch.infected.zombie_jump matches 1.. run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10205 if score @s switch.infected.zombie_jump matches 1.. store success score #success switch.data run scoreboard players remove @s switch.infected.zombie_jump 1
execute if score @s switch.trigger.shop matches 10205 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Messages
execute if score @s switch.trigger.shop matches 200 run playsound block.note_block.bell ambient @s
function switch:translations/shop_infected

