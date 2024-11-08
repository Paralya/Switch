
## Manage trigger value
# If trigger == -1, add 1 to current_model
# If trigger == -2, subtract 1 from current_model
# If trigger == -3, ride the nearest vehicle
# If trigger == -4, get a random value between 0 and 53
# If trigger > 0, set current_model to trigger - 1
execute if score @s shopping_kart.trigger_model matches -1 run scoreboard players add @s shopping_kart.current_model 1
execute if score @s shopping_kart.trigger_model matches -2 run scoreboard players remove @s shopping_kart.current_model 1
execute if score @s shopping_kart.trigger_model matches -3 run ride @s[predicate=!shopping_kart:has_vehicle] mount @e[tag=shopping_kart.kart,sort=nearest,limit=1]
execute if score @s shopping_kart.trigger_model matches -4 on vehicle store result score #random shopping_kart.current_model run data get entity @s UUID[0]
execute if score @s shopping_kart.trigger_model matches -4 run scoreboard players set #54 shopping_kart.data 54
execute if score @s shopping_kart.trigger_model matches -4 run scoreboard players operation #random shopping_kart.current_model %= #54 shopping_kart.data
execute if score @s shopping_kart.trigger_model matches -4 run scoreboard players operation @s shopping_kart.current_model = #random shopping_kart.current_model
execute if score @s shopping_kart.trigger_model matches 1.. run scoreboard players operation @s shopping_kart.current_model = @s shopping_kart.trigger_model
execute if score @s shopping_kart.trigger_model matches 1.. run scoreboard players remove @s shopping_kart.current_model 1

## Correct model values
execute if score @s shopping_kart.current_model matches ..-1 run scoreboard players set @s shopping_kart.current_model 53
execute if score @s shopping_kart.current_model matches 54.. run scoreboard players set @s shopping_kart.current_model 0
scoreboard players operation #temp shopping_kart.current_model = @s shopping_kart.current_model
scoreboard players add #temp shopping_kart.current_model 1
tellraw @s ["",{"nbt":"ShoppingKart","storage":"shopping_kart:main","interpret":true},{"text":" Current Model: ","color":"dark_green"},{"score":{"name":"#temp","objective":"shopping_kart.current_model"},"color":"green"},{"text":"/","color":"dark_green"},{"text":"54","color":"green"}]

## Change current vehicle
execute if score @s shopping_kart.trigger_model matches -2.. run function shopping_kart:kart/switch_model/
execute if score @s shopping_kart.trigger_model matches -4 run function shopping_kart:kart/switch_model/

## Reset trigger value
scoreboard players reset @s shopping_kart.trigger_model

