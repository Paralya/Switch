
execute if score @s shopping_kart.booster_timer matches 0 if score #booster shopping_kart.data matches 1..2 run scoreboard players operation #old shopping_kart.data = #new_motion_x shopping_kart.data
execute if score @s shopping_kart.booster_timer matches 0 if score #booster shopping_kart.data matches 3..4 run scoreboard players operation #old shopping_kart.data = #new_motion_z shopping_kart.data
execute if score #booster shopping_kart.data matches 1 run scoreboard players add #new_motion_x shopping_kart.data 2500000
execute if score #booster shopping_kart.data matches 2 run scoreboard players remove #new_motion_x shopping_kart.data 2500000
execute if score #booster shopping_kart.data matches 3 run scoreboard players add #new_motion_z shopping_kart.data 2500000
execute if score #booster shopping_kart.data matches 4 run scoreboard players remove #new_motion_z shopping_kart.data 2500000
execute if score @s shopping_kart.booster_timer matches 0 if score #booster shopping_kart.data matches 1..2 run scoreboard players operation #new shopping_kart.data = #new_motion_x shopping_kart.data
execute if score @s shopping_kart.booster_timer matches 0 if score #booster shopping_kart.data matches 3..4 run scoreboard players operation #new shopping_kart.data = #new_motion_z shopping_kart.data
execute unless score #new shopping_kart.data matches -2500000..2500000 run scoreboard players add @s shopping_kart.engine 120
execute unless score #new shopping_kart.data matches -2500000..2500000 run particle happy_villager ~ ~.5 ~ 1 1 1 0 10
execute unless score #new shopping_kart.data matches -2500000..2500000 if score @s shopping_kart.engine > @s shopping_kart.max_engine run scoreboard players operation @s shopping_kart.engine = @s shopping_kart.max_engine
execute if score #new shopping_kart.data matches -2500000..2500000 run scoreboard players remove @s shopping_kart.engine 120
execute if score #new shopping_kart.data matches -2500000..2500000 run particle angry_villager ~ ~.5 ~ 1 1 1 0 10
execute if score @s shopping_kart.booster_timer matches 0 if score #new shopping_kart.data matches -2500000..2500000 run scoreboard players set @s shopping_kart.booster_timer 20
execute on passengers at @s run playsound block.note_block.harp block @s ~ ~ ~ .5

# tellraw @a [{"text":"Old / New : ","color":"yellow"},{"score":{"name":"#old","objective":"shopping_kart.data"},"color":"aqua"},{"text":" / "},{"score":{"name":"#new","objective":"shopping_kart.data"},"color":"aqua"}]

