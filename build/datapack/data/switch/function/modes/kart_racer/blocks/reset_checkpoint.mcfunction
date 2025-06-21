
#> switch:modes/kart_racer/blocks/reset_checkpoint
#
# @within	switch:modes/kart_racer/checkpoints/remember/get_from_kart
#

## Reset effects due to crossing a checkpoint
# (Remove cruise_control, engine_off, no_steering, no_grip)
scoreboard players operation @s[scores={shopping_kart.cruise_control=1..}] shopping_kart.max_engine = @s shopping_kart.cruise_control
scoreboard players set @s shopping_kart.cruise_control 0
tag @s remove shopping_kart.engine_off
tag @s remove shopping_kart.no_steering
tag @s remove shopping_kart.no_grip

