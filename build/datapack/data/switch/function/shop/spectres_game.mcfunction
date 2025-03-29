
#> switch:shop/spectres_game
#
# @within	switch:shop/trigger
#

# Start

# Init scoreboard
scoreboard players add @s switch.spectres_game.sp_arrow_effect 0
scoreboard players add @s switch.spectres_game.sp_arrows 0
scoreboard players add @s switch.spectres_game.sp_tnt 0
scoreboard players add @s switch.spectres_game.vi_arrows 0
scoreboard players add @s switch.spectres_game.vi_tnt 0
execute if score @s switch.trigger.shop matches 500 run playsound block.note_block.bell ambient @s

## Spectre
# Random effects on arrows
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrow_effect matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrow_effect matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrow_effect matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrow_effect matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 501 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.sp_arrow_effect 1
execute if score @s switch.trigger.shop matches 501 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 501 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Arrow amount
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_arrows matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_arrows matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_arrows matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_arrows matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 502 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 502 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 502 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# TNT amount
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.sp_tnt matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.sp_tnt matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.sp_tnt matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 503 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.sp_tnt 1
execute if score @s switch.trigger.shop matches 503 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 503 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

## Visible
# Arrow amount
execute if score @s switch.trigger.shop matches 511 if score @s switch.spectres_game.vi_arrows matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 511 if score @s switch.spectres_game.vi_arrows matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 511 if score @s switch.spectres_game.vi_arrows matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 511 if score @s switch.spectres_game.vi_arrows matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 511 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 511 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 511 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# TNT amount
execute if score @s switch.trigger.shop matches 512 if score @s switch.spectres_game.vi_tnt matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 512 if score @s switch.spectres_game.vi_tnt matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 512 if score @s switch.spectres_game.vi_tnt matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 512 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.vi_tnt 1
execute if score @s switch.trigger.shop matches 512 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 512 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Messages
function switch:translations/shop_spectres_game

## File attribut: Ignore translations

# Number of arrows
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 6 if score @s switch.money matches 350.. store success score #success switch.data run scoreboard players remove @s switch.money 350
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 7 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 501 if score @s switch.spectres_game.sp_arrows matches 8 if score @s switch.money matches 450.. store success score #success switch.data run scoreboard players remove @s switch.money 450
execute if score @s switch.trigger.shop matches 501 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 501 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 501 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Number of arrows
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 1 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 2 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 3 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 4 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 5 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 6 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 7 run scoreboard players add @s switch.money 280
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 7 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 8 run scoreboard players add @s switch.money 320
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 8 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 9 run scoreboard players add @s switch.money 360
execute if score @s switch.trigger.shop matches 10501 if score @s switch.spectres_game.sp_arrows matches 9 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_arrows 1
execute if score @s switch.trigger.shop matches 10501 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Number of TNT
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_tnt matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_tnt matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 502 if score @s switch.spectres_game.sp_tnt matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 502 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.sp_tnt 1
execute if score @s switch.trigger.shop matches 502 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 502 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Number of TNT
execute if score @s switch.trigger.shop matches 10502 if score @s switch.spectres_game.sp_tnt matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10502 if score @s switch.spectres_game.sp_tnt matches 1 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_tnt 1
execute if score @s switch.trigger.shop matches 10502 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10502 if score @s switch.spectres_game.sp_tnt matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10502 if score @s switch.spectres_game.sp_tnt matches 2 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_tnt 1
execute if score @s switch.trigger.shop matches 10502 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10502 if score @s switch.spectres_game.sp_tnt matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10502 if score @s switch.spectres_game.sp_tnt matches 3 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.sp_tnt 1
execute if score @s switch.trigger.shop matches 10502 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Number of arrows
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 5 if score @s switch.money matches 300.. store success score #success switch.data run scoreboard players remove @s switch.money 300
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 6 if score @s switch.money matches 350.. store success score #success switch.data run scoreboard players remove @s switch.money 350
execute if score @s switch.trigger.shop matches 503 if score @s switch.spectres_game.vi_arrows matches 7 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 503 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 503 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 503 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Number of arrows
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 1 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 2 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 3 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 4 run scoreboard players add @s switch.money 160
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 4 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 5 run scoreboard players add @s switch.money 200
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 5 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 6 run scoreboard players add @s switch.money 240
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 6 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 7 run scoreboard players add @s switch.money 280
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 7 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 8 run scoreboard players add @s switch.money 320
execute if score @s switch.trigger.shop matches 10503 if score @s switch.spectres_game.vi_arrows matches 8 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_arrows 1
execute if score @s switch.trigger.shop matches 10503 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Number of TNT
execute if score @s switch.trigger.shop matches 504 if score @s switch.spectres_game.vi_tnt matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 504 if score @s switch.spectres_game.vi_tnt matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 504 if score @s switch.spectres_game.vi_tnt matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 504 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.vi_tnt 1
execute if score @s switch.trigger.shop matches 504 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 504 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Selling Number of TNT
execute if score @s switch.trigger.shop matches 10504 if score @s switch.spectres_game.vi_tnt matches 1 run scoreboard players add @s switch.money 40
execute if score @s switch.trigger.shop matches 10504 if score @s switch.spectres_game.vi_tnt matches 1 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_tnt 1
execute if score @s switch.trigger.shop matches 10504 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10504 if score @s switch.spectres_game.vi_tnt matches 2 run scoreboard players add @s switch.money 80
execute if score @s switch.trigger.shop matches 10504 if score @s switch.spectres_game.vi_tnt matches 2 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_tnt 1
execute if score @s switch.trigger.shop matches 10504 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

execute if score @s switch.trigger.shop matches 10504 if score @s switch.spectres_game.vi_tnt matches 3 run scoreboard players add @s switch.money 120
execute if score @s switch.trigger.shop matches 10504 if score @s switch.spectres_game.vi_tnt matches 3 store success score #success switch.data run scoreboard players remove @s switch.spectres_game.vi_tnt 1
execute if score @s switch.trigger.shop matches 10504 if score #success switch.data matches 1.. run playsound entity.experience_orb.pickup ambient @s

# Messages
execute if score @s switch.trigger.shop matches 500 run playsound block.note_block.bell ambient @s
function switch:translations/shop_spectres_game

