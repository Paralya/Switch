
tag @s add switch.temp
execute if score #instant_engine_max switch.data matches 1 run scoreboard players operation @s switch.temp.engine = @s switch.temp.max_engine

##Conditions if the vehicle have a passenger
function switch:modes/mario_kart/kart/visual_passenger

##Water specification
function switch:modes/mario_kart/kart/physics_water

##Run into a banana
function switch:modes/mario_kart/kart/physics_banana

##Physics calculation depending on engine speed, surface, old motion, booster, etc.
function switch:modes/mario_kart/kart/physics_calculation

##Apply new motion & update old motion
function switch:modes/mario_kart/kart/physics_apply_motion

##Try to predict position after 1 tick (new_pos = old_pos + new_motion)
function switch:modes/mario_kart/kart/physics_predict_position

##Title actionbar
execute if score #have_passenger switch.data matches 1 run function switch:modes/mario_kart/kart/title_actionbar

#Remove temp tag & Add tag to avoid double calculation
tag @s remove switch.temp
tag @s add switch.calculated

