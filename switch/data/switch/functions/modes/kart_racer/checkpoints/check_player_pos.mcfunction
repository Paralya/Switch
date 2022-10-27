
execute store result score #px switch.data run data get entity @s Pos[0]
execute store result score #py switch.data run data get entity @s Pos[1]
execute store result score #pz switch.data run data get entity @s Pos[2]

#tellraw @a [{"text":"#x : ","color":"yellow"},{"score":{"name":"#x","objective":"switch.data"},"color":"aqua"},{"text":", #y : "},{"score":{"name":"#y","objective":"switch.data"},"color":"aqua"},{"text":", #z : "},{"score":{"name":"#z","objective":"switch.data"},"color":"aqua"}]
#tellraw @a [{"text":"#dx : ","color":"yellow"},{"score":{"name":"#dx","objective":"switch.data"},"color":"aqua"},{"text":", #dy : "},{"score":{"name":"#dy","objective":"switch.data"},"color":"aqua"},{"text":", #dz : "},{"score":{"name":"#dz","objective":"switch.data"},"color":"aqua"}]
#tellraw @a [{"text":"#px : ","color":"yellow"},{"score":{"name":"#px","objective":"switch.data"},"color":"aqua"},{"text":", #py : "},{"score":{"name":"#py","objective":"switch.data"},"color":"aqua"},{"text":", #pz : "},{"score":{"name":"#pz","objective":"switch.data"},"color":"aqua"}]

scoreboard players operation #px switch.data -= #x switch.data
scoreboard players operation #py switch.data -= #y switch.data
scoreboard players operation #pz switch.data -= #z switch.data
execute if score #px switch.data matches ..-1 run scoreboard players operation #px switch.data *= #-1 switch.data
execute if score #py switch.data matches ..-1 run scoreboard players operation #py switch.data *= #-1 switch.data
execute if score #pz switch.data matches ..-1 run scoreboard players operation #pz switch.data *= #-1 switch.data

execute if score #px switch.data <= #dx switch.data if score #py switch.data <= #dy switch.data if score #pz switch.data <= #dz switch.data run function switch:modes/kart_racer/checkpoints/player_in

#tellraw @a [{"text":"#px : ","color":"yellow"},{"score":{"name":"#px","objective":"switch.data"},"color":"aqua"},{"text":", #py : "},{"score":{"name":"#py","objective":"switch.data"},"color":"aqua"},{"text":", #pz : "},{"score":{"name":"#pz","objective":"switch.data"},"color":"aqua"}]

