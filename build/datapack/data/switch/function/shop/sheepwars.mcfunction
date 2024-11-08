
#> switch:shop/sheepwars
#
# @within	switch:shop/trigger
#

# Start

# Kit More Health
scoreboard players add @s switch.sheepwars.kit_health 0
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 401 if score @s switch.sheepwars.kit_health matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 401 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_health 1
execute if score @s switch.trigger.shop matches 401 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 401 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit Bow
scoreboard players add @s switch.sheepwars.kit_bow 0
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 402 if score @s switch.sheepwars.kit_bow matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 402 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_bow 1
execute if score @s switch.trigger.shop matches 402 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 402 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit Sword
scoreboard players add @s switch.sheepwars.kit_sword 0
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 403 if score @s switch.sheepwars.kit_sword matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 403 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_sword 1
execute if score @s switch.trigger.shop matches 403 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 403 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit More Sheep
scoreboard players add @s switch.sheepwars.kit_more_sheep 0
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 404 if score @s switch.sheepwars.kit_more_sheep matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 404 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_more_sheep 1
execute if score @s switch.trigger.shop matches 404 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 404 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit Builder
scoreboard players add @s switch.sheepwars.kit_builder 0
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 405 if score @s switch.sheepwars.kit_builder matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 405 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_builder 1
execute if score @s switch.trigger.shop matches 405 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 405 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit Mobility
scoreboard players add @s switch.sheepwars.kit_mobility 0
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 406 if score @s switch.sheepwars.kit_mobility matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 406 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_mobility 1
execute if score @s switch.trigger.shop matches 406 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 406 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit Armored Sheep
scoreboard players add @s switch.sheepwars.kit_armored_sheep 0
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 407 if score @s switch.sheepwars.kit_armored_sheep matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 407 if score #success switch.data matches 1.. run scoreboard players add @s switch.sheepwars.kit_armored_sheep 1
execute if score @s switch.trigger.shop matches 407 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 407 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
# Kit Choosen
scoreboard players add @s switch.sheepwars.choosen_kit 0
execute if score @s switch.trigger.shop matches 411 run scoreboard players set @s switch.sheepwars.choosen_kit 1
execute if score @s switch.trigger.shop matches 412 run scoreboard players set @s switch.sheepwars.choosen_kit 2
execute if score @s switch.trigger.shop matches 413 run scoreboard players set @s switch.sheepwars.choosen_kit 3
execute if score @s switch.trigger.shop matches 414 run scoreboard players set @s switch.sheepwars.choosen_kit 4
execute if score @s switch.trigger.shop matches 415 run scoreboard players set @s switch.sheepwars.choosen_kit 5
execute if score @s switch.trigger.shop matches 416 run scoreboard players set @s switch.sheepwars.choosen_kit 6
execute if score @s switch.trigger.shop matches 417 run scoreboard players set @s switch.sheepwars.choosen_kit 7

## Messages
execute if score @s switch.trigger.shop matches 400 run playsound block.note_block.bell ambient @s
# More Health
# Bow
# Sword
# More Sheeps
# Builder
# Mobility
# Armored Sheep
function switch:translations/shop_sheepwars

