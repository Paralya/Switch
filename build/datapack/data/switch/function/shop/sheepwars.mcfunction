
#> switch:shop/sheepwars
#
# @within	switch:shop/trigger
#

## File attribut: Ignore translations

# Kit Chosen
scoreboard players add @s switch.sheepwars.chosen_kit 0
execute if score @s switch.trigger.shop matches 451 run scoreboard players set @s switch.sheepwars.chosen_kit 1
execute if score @s switch.trigger.shop matches 452 run scoreboard players set @s switch.sheepwars.chosen_kit 2
execute if score @s switch.trigger.shop matches 453 run scoreboard players set @s switch.sheepwars.chosen_kit 3
execute if score @s switch.trigger.shop matches 454 run scoreboard players set @s switch.sheepwars.chosen_kit 4
execute if score @s switch.trigger.shop matches 455 run scoreboard players set @s switch.sheepwars.chosen_kit 5
execute if score @s switch.trigger.shop matches 456 run scoreboard players set @s switch.sheepwars.chosen_kit 6
execute if score @s switch.trigger.shop matches 457 run scoreboard players set @s switch.sheepwars.chosen_kit 7

# Kit 'More health'
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 401 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_health 1
execute if score @s switch.trigger.shop matches 401 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 401 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'More health'
execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_health 1
execute if score @s switch.trigger.shop matches 10401 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_health 1
execute if score @s switch.trigger.shop matches 10401 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_health 1
execute if score @s switch.trigger.shop matches 10401 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10401 if score @s switch.sheepwars.kit_health matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_health 1
execute if score @s switch.trigger.shop matches 10401 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Kit 'Better Bow'
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 402 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_bow 1
execute if score @s switch.trigger.shop matches 402 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 402 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'Better Bow'
execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_bow 1
execute if score @s switch.trigger.shop matches 10402 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_bow 1
execute if score @s switch.trigger.shop matches 10402 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_bow 1
execute if score @s switch.trigger.shop matches 10402 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10402 if score @s switch.sheepwars.kit_bow matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_bow 1
execute if score @s switch.trigger.shop matches 10402 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Kit 'Better Sword'
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 403 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_sword 1
execute if score @s switch.trigger.shop matches 403 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 403 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'Better Sword'
execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_sword 1
execute if score @s switch.trigger.shop matches 10403 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_sword 1
execute if score @s switch.trigger.shop matches 10403 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_sword 1
execute if score @s switch.trigger.shop matches 10403 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10403 if score @s switch.sheepwars.kit_sword matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_sword 1
execute if score @s switch.trigger.shop matches 10403 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Kit 'More sheep'
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 404 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_more_sheep 1
execute if score @s switch.trigger.shop matches 404 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 404 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'More sheep'
execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_more_sheep 1
execute if score @s switch.trigger.shop matches 10404 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_more_sheep 1
execute if score @s switch.trigger.shop matches 10404 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_more_sheep 1
execute if score @s switch.trigger.shop matches 10404 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10404 if score @s switch.sheepwars.kit_more_sheep matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_more_sheep 1
execute if score @s switch.trigger.shop matches 10404 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Kit 'Builder'
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 405 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_builder 1
execute if score @s switch.trigger.shop matches 405 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 405 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'Builder'
execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_builder 1
execute if score @s switch.trigger.shop matches 10405 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_builder 1
execute if score @s switch.trigger.shop matches 10405 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_builder 1
execute if score @s switch.trigger.shop matches 10405 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10405 if score @s switch.sheepwars.kit_builder matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_builder 1
execute if score @s switch.trigger.shop matches 10405 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Kit 'Mobility'
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 406 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_mobility 1
execute if score @s switch.trigger.shop matches 406 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 406 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'Mobility'
execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_mobility 1
execute if score @s switch.trigger.shop matches 10406 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_mobility 1
execute if score @s switch.trigger.shop matches 10406 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_mobility 1
execute if score @s switch.trigger.shop matches 10406 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10406 if score @s switch.sheepwars.kit_mobility matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_mobility 1
execute if score @s switch.trigger.shop matches 10406 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Kit 'Armored sheep'
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 0 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 1 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 3 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 407 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_armored_sheep 1
execute if score @s switch.trigger.shop matches 407 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 407 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Kit 'Armored sheep'
execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 1 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 1 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_armored_sheep 1
execute if score @s switch.trigger.shop matches 10407 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 2 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 2 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_armored_sheep 1
execute if score @s switch.trigger.shop matches 10407 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 3 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 3 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_armored_sheep 1
execute if score @s switch.trigger.shop matches 10407 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 4 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10407 if score @s switch.sheepwars.kit_armored_sheep matches 4 store success score #success switch.data run scoreboard players remove @s switch.sheepwars.kit_armored_sheep 1
execute if score @s switch.trigger.shop matches 10407 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Messages
execute if score @s switch.trigger.shop matches 400 run playsound block.note_block.bell ambient @s
function switch:translations/shop_sheepwars

