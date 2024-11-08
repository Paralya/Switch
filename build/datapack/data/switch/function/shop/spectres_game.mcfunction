
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
scoreboard players add @s switch.spectres_game.vi_slow_regen 0
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

# Slow regeneration
execute if score @s switch.trigger.shop matches 513 if score @s switch.spectres_game.vi_slow_regen matches 0 if score @s switch.money matches 600.. store success score #success switch.data run scoreboard players remove @s switch.money 600
execute if score @s switch.trigger.shop matches 513 if score #success switch.data matches 1.. run scoreboard players add @s switch.spectres_game.vi_slow_regen 1
execute if score @s switch.trigger.shop matches 513 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 513 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Messages
function switch:translations/shop_spectres_game

