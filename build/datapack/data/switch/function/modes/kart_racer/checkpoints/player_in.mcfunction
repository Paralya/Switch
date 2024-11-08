
#> switch:modes/kart_racer/checkpoints/player_in
#
# @within	switch:modes/kart_racer/checkpoints/check_player_pos
#

# Switch to next checkpoint
scoreboard players add @s switch.checkpoint 1
scoreboard players add @s switch.temp.checkpoint 1
scoreboard players operation @s switch.checkpoint %= #modulo switch.data
execute if score @s switch.checkpoint matches 0 run scoreboard players add @s switch.lap 1
execute if score @s switch.checkpoint matches 0 unless score @s switch.lap > #total_laps switch.data run scoreboard players operation @s switch.temp.pos_on_last_lap = @s switch.temp.pv_classement

# Playsounds & messages
execute if score @s switch.checkpoint matches 0 at @e[limit=2] at @s run playsound item.goat_horn.sound.1 ambient @s ^ ^ ^10 100 1 1
function switch:translations/modes_kart_racer_checkpoints_player_in
execute unless score @s switch.checkpoint matches 0 at @s run playsound entity.player.levelup ambient @s ^ ^ ^10 100 2 1
execute if score @s switch.checkpoint matches 0 if score @s switch.lap > #total_laps switch.data run function switch:modes/kart_racer/complete

# Checkpoint remember
function switch:modes/kart_racer/checkpoints/remember/

