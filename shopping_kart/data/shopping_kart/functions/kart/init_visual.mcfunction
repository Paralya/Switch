
# Add NBT
tag @s add shopping_kart.kart_visual
data modify entity @s transformation.translation[1] set value -0.17f
execute if score #model shopping_kart.data matches 1 run data modify entity @s transformation.scale set value [0.75f,0.75f,0.75f]
execute if score #model shopping_kart.data matches 1 run data modify entity @s transformation.translation[1] set value 0.04f


# Scoreboard + Model
scoreboard players operation @s shopping_kart.id = #next_id shopping_kart.id
item replace entity @s container.0 with golden_hoe{CustomModelData:2010000}

# Ride the kart
ride @s mount @e[tag=shopping_kart.current_kart,sort=nearest,limit=1]

