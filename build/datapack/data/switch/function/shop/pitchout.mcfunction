
#> switch:shop/pitchout
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tutorial/second
#			switch:shop/trigger
#

# Tutorial stuff
execute if score @s switch.tutorial matches 3 run scoreboard players set @s switch.tutorial 4

## File attribut: Ignore translations

# Leather boots
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250

execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run scoreboard players add @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Leather boots

execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 1 store success score #success switch.data run scoreboard players remove @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 10101 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 2 store success score #success switch.data run scoreboard players remove @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 10101 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 3 store success score #success switch.data run scoreboard players remove @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 10101 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 4 store success score #success switch.data run scoreboard players remove @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 10101 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 5.. run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10101 if score @s switch.pitchout.boots matches 5.. store success score #success switch.data run scoreboard players remove @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 10101 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Ender pearls
execute if score @s switch.trigger.shop matches 102 if score @s switch.pitchout.ender_pearl matches 0 if score @s switch.money matches 80.. store success score #success switch.data run scoreboard players remove @s switch.money 80
execute if score @s switch.trigger.shop matches 102 if score @s switch.pitchout.ender_pearl matches 1 if score @s switch.money matches 160.. store success score #success switch.data run scoreboard players remove @s switch.money 160

execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run scoreboard players add @s switch.pitchout.ender_pearl 1
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Ender pearls

execute if score @s switch.trigger.shop matches 10102 if score @s switch.pitchout.ender_pearl matches 1 run scoreboard players add @s switch.money 64
execute if score @s switch.trigger.shop matches 10102 if score @s switch.pitchout.ender_pearl matches 1 store success score #success switch.data run scoreboard players remove @s switch.pitchout.ender_pearl 1
execute if score @s switch.trigger.shop matches 10102 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10102 if score @s switch.pitchout.ender_pearl matches 2.. run scoreboard players add @s switch.money 128
execute if score @s switch.trigger.shop matches 10102 if score @s switch.pitchout.ender_pearl matches 2.. store success score #success switch.data run scoreboard players remove @s switch.pitchout.ender_pearl 1
execute if score @s switch.trigger.shop matches 10102 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Messages
execute if score @s switch.trigger.shop matches 100 run playsound block.note_block.bell ambient @s
function switch:translations/shop_pitchout

