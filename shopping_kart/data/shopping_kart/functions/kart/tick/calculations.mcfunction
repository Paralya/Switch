
tag @s add shopping_kart.temp
execute if score #instant_engine_max shopping_kart.data matches 1 run scoreboard players operation @s shopping_kart.engine = @s shopping_kart.max_engine

## Conditions if the vehicle have a passenger
function shopping_kart:kart/visual_passenger

## Water specification
function shopping_kart:kart/physics/water

## Physics calculation depending on engine speed, surface, old motion, booster, etc.
function shopping_kart:kart/physics/calculation

## Apply new motion & update old motion
function shopping_kart:kart/physics/apply_motion

## Try to predict position after 1 tick (new_pos = old_pos + new_motion)
function shopping_kart:kart/physics/predict_position

## Title actionbar
execute if score #have_passenger shopping_kart.data matches 1 run function shopping_kart:kart/title_actionbar

# Remove temp tag & Add tag to avoid double calculation
tag @s remove shopping_kart.temp
tag @s add shopping_kart.calculated

