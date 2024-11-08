
#> switch:modes/kart_racer/checkpoints/check_player_pos
#
# @within	switch:modes/kart_racer/checkpoints/tick
#

execute store result score #px switch.data run data get entity @s Pos[0]
execute store result score #py switch.data run data get entity @s Pos[1]
execute store result score #pz switch.data run data get entity @s Pos[2]


scoreboard players operation #px switch.data -= #x switch.data
scoreboard players operation #py switch.data -= #y switch.data
scoreboard players operation #pz switch.data -= #z switch.data
execute if score #px switch.data matches ..-1 run scoreboard players operation #px switch.data *= #-1 switch.data
execute if score #py switch.data matches ..-1 run scoreboard players operation #py switch.data *= #-1 switch.data
execute if score #pz switch.data matches ..-1 run scoreboard players operation #pz switch.data *= #-1 switch.data

execute if score #px switch.data <= #dx switch.data if score #py switch.data <= #dy switch.data if score #pz switch.data <= #dz switch.data run function switch:modes/kart_racer/checkpoints/player_in

function switch:translations/modes_kart_racer_checkpoints_check_player_pos

