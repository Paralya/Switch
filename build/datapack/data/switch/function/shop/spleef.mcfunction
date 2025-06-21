
#> switch:shop/spleef
#
# @within	switch:shop/trigger
#

## File attribut: Ignore translations

# Snow blocks

execute if score @s switch.trigger.shop matches 301 if score @s switch.spleef.snow_block matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50

execute if score @s switch.trigger.shop matches 301 if score @s switch.spleef.snow_block matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100

execute if score @s switch.trigger.shop matches 301 if score @s switch.spleef.snow_block matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150

execute if score @s switch.trigger.shop matches 301 if score @s switch.spleef.snow_block matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200

execute if score @s switch.trigger.shop matches 301 if score @s switch.spleef.snow_block matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250

execute if score @s switch.trigger.shop matches 301 if score @s switch.spleef.snow_block matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300

execute if score @s switch.trigger.shop matches 301 if score #success switch.data matches 1.. run scoreboard players add @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 301 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 301 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Snow blocks

execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 1 store success score #success switch.data run scoreboard players remove @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 10301 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 2 store success score #success switch.data run scoreboard players remove @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 10301 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 3 store success score #success switch.data run scoreboard players remove @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 10301 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 4 store success score #success switch.data run scoreboard players remove @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 10301 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 5 store success score #success switch.data run scoreboard players remove @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 10301 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10301 if score @s switch.spleef.snow_block matches 6 store success score #success switch.data run scoreboard players remove @s switch.spleef.snow_block 1
execute if score @s switch.trigger.shop matches 10301 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Powder snow

execute if score @s switch.trigger.shop matches 302 if score @s switch.spleef.powder_snow matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50

execute if score @s switch.trigger.shop matches 302 if score @s switch.spleef.powder_snow matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100

execute if score @s switch.trigger.shop matches 302 if score @s switch.spleef.powder_snow matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150

execute if score @s switch.trigger.shop matches 302 if score @s switch.spleef.powder_snow matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200

execute if score @s switch.trigger.shop matches 302 if score #success switch.data matches 1.. run scoreboard players add @s switch.spleef.powder_snow 1
execute if score @s switch.trigger.shop matches 302 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 302 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Powder snow

execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 1 store success score #success switch.data run scoreboard players remove @s switch.spleef.powder_snow 1
execute if score @s switch.trigger.shop matches 10302 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 2 store success score #success switch.data run scoreboard players remove @s switch.spleef.powder_snow 1
execute if score @s switch.trigger.shop matches 10302 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 3 store success score #success switch.data run scoreboard players remove @s switch.spleef.powder_snow 1
execute if score @s switch.trigger.shop matches 10302 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10302 if score @s switch.spleef.powder_snow matches 4 store success score #success switch.data run scoreboard players remove @s switch.spleef.powder_snow 1
execute if score @s switch.trigger.shop matches 10302 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Messages
execute if score @s switch.trigger.shop matches 300 run playsound block.note_block.bell ambient @s
function switch:translations/shop_spleef

