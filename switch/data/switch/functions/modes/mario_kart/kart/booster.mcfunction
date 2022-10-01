
execute if score @s switch.temp.booster_timer matches 0 if score #booster switch.data matches 1..2 run scoreboard players operation #old switch.data = #new_motion_x switch.data
execute if score @s switch.temp.booster_timer matches 0 if score #booster switch.data matches 3..4 run scoreboard players operation #old switch.data = #new_motion_z switch.data
execute if score #booster switch.data matches 1 run scoreboard players add #new_motion_x switch.data 2500000
execute if score #booster switch.data matches 2 run scoreboard players remove #new_motion_x switch.data 2500000
execute if score #booster switch.data matches 3 run scoreboard players add #new_motion_z switch.data 2500000
execute if score #booster switch.data matches 4 run scoreboard players remove #new_motion_z switch.data 2500000
execute if score @s switch.temp.booster_timer matches 0 if score #booster switch.data matches 1..2 run scoreboard players operation #new switch.data = #new_motion_x switch.data
execute if score @s switch.temp.booster_timer matches 0 if score #booster switch.data matches 3..4 run scoreboard players operation #new switch.data = #new_motion_z switch.data
execute unless score #new switch.data matches -2500000..2500000 run scoreboard players operation @s switch.temp.engine *= #10 switch.data
execute unless score #new switch.data matches -2500000..2500000 run scoreboard players operation @s switch.temp.engine /= #9 switch.data
execute unless score #new switch.data matches -2500000..2500000 if score @s switch.temp.engine > @s switch.temp.max_engine run scoreboard players operation @s switch.temp.engine = @s switch.temp.max_engine
execute if score @s switch.temp.booster_timer matches 0 if score #new switch.data matches -2500000..2500000 run scoreboard players operation @s switch.temp.engine /= #2 switch.data
scoreboard players set @s switch.temp.booster_timer 50
playsound block.note_block.harp block @a[predicate=switch:has_vehicle_with_tag]

#tellraw @a [{"text":"Old / New : ","color":"yellow"},{"score":{"name":"#old","objective":"switch.data"},"color":"aqua"},{"text":" / "},{"score":{"name":"#new","objective":"switch.data"},"color":"aqua"}]

