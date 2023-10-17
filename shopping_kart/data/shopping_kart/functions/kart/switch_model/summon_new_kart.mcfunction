
# Tag the current player to ride the new kart
tag @s add shopping_kart.owner

# Copy the score of the selected model and rotation
scoreboard players add @s shopping_kart.current_model 0
scoreboard players operation #model shopping_kart.data = @s shopping_kart.current_model
data modify storage shopping_kart:data ForcedRotation set from entity @s Rotation

# Summon the kart depending on the selected model
execute if score #model shopping_kart.data matches 0 run summon pig ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 1 run summon pig ~ ~ ~ {Tags:["shopping_kart.new_kart"],Age:-1000000}
execute if score #model shopping_kart.data matches 2 run summon wolf ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 3 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:white"}
execute if score #model shopping_kart.data matches 4 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:black"}
execute if score #model shopping_kart.data matches 5 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:red"}
execute if score #model shopping_kart.data matches 6 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:siamese"}
execute if score #model shopping_kart.data matches 7 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:british_shorthair"}
execute if score #model shopping_kart.data matches 8 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:calico"}
execute if score #model shopping_kart.data matches 9 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:persian"}
execute if score #model shopping_kart.data matches 10 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:ragdoll"}
execute if score #model shopping_kart.data matches 11 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:tabby"}
execute if score #model shopping_kart.data matches 12 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:all_black"}
execute if score #model shopping_kart.data matches 13 run summon cat ~ ~ ~ {Tags:["shopping_kart.new_kart"],variant:"minecraft:jellie"}
execute if score #model shopping_kart.data matches 14 run summon ocelot ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 15 run summon fox ~ ~ ~ {Tags:["shopping_kart.new_kart"],Type:"red"}
execute if score #model shopping_kart.data matches 16 run summon fox ~ ~ ~ {Tags:["shopping_kart.new_kart"],Type:"snow"}
execute if score #model shopping_kart.data matches 17 run summon chicken ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 18 run summon goat ~ ~ ~ {Tags:["shopping_kart.new_kart"],HasLeftHorn:1b,HasRightHorn:1b,IsScreamingGoat:1b}
execute if score #model shopping_kart.data matches 19 run summon goat ~ ~ ~ {Tags:["shopping_kart.new_kart"],HasLeftHorn:1b,HasRightHorn:0b,IsScreamingGoat:1b}
execute if score #model shopping_kart.data matches 20 run summon goat ~ ~ ~ {Tags:["shopping_kart.new_kart"],HasLeftHorn:0b,HasRightHorn:1b,IsScreamingGoat:1b}
execute if score #model shopping_kart.data matches 21 run summon goat ~ ~ ~ {Tags:["shopping_kart.new_kart"],HasLeftHorn:0b,HasRightHorn:0b,IsScreamingGoat:1b}
execute if score #model shopping_kart.data matches 22 run summon pig ~ ~ ~ {Tags:["shopping_kart.new_kart"],Saddle:1b}
execute if score #model shopping_kart.data matches 23 run summon pig ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 24 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Sheared:1b}
execute if score #model shopping_kart.data matches 25 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:0}
execute if score #model shopping_kart.data matches 26 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:1}
execute if score #model shopping_kart.data matches 27 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:2}
execute if score #model shopping_kart.data matches 28 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:3}
execute if score #model shopping_kart.data matches 29 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:4}
execute if score #model shopping_kart.data matches 30 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:5}
execute if score #model shopping_kart.data matches 31 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:6}
execute if score #model shopping_kart.data matches 32 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:7}
execute if score #model shopping_kart.data matches 33 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:8}
execute if score #model shopping_kart.data matches 34 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:9}
execute if score #model shopping_kart.data matches 35 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:10}
execute if score #model shopping_kart.data matches 36 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:11}
execute if score #model shopping_kart.data matches 37 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:12}
execute if score #model shopping_kart.data matches 38 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:13}
execute if score #model shopping_kart.data matches 39 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:14}
execute if score #model shopping_kart.data matches 40 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],Color:15}
execute if score #model shopping_kart.data matches 41 run summon sheep ~ ~ ~ {Tags:["shopping_kart.new_kart"],CustomName:'{"text":"jeb_"}'}
execute if score #model shopping_kart.data matches 42 run summon cow ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 43 run summon mooshroom ~ ~ ~ {Tags:["shopping_kart.new_kart"],Type:"red"}
execute if score #model shopping_kart.data matches 44 run summon mooshroom ~ ~ ~ {Tags:["shopping_kart.new_kart"],Type:"brown"}
execute if score #model shopping_kart.data matches 45 run summon panda ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 46 run summon axolotl ~ ~ ~ {Tags:["shopping_kart.new_kart"],Variant:0}
execute if score #model shopping_kart.data matches 47 run summon axolotl ~ ~ ~ {Tags:["shopping_kart.new_kart"],Variant:1}
execute if score #model shopping_kart.data matches 48 run summon axolotl ~ ~ ~ {Tags:["shopping_kart.new_kart"],Variant:2}
execute if score #model shopping_kart.data matches 49 run summon axolotl ~ ~ ~ {Tags:["shopping_kart.new_kart"],Variant:3}
execute if score #model shopping_kart.data matches 50 run summon axolotl ~ ~ ~ {Tags:["shopping_kart.new_kart"],Variant:4}
execute if score #model shopping_kart.data matches 51 run summon sniffer ~ ~ ~ {Tags:["shopping_kart.new_kart"]}
execute if score #model shopping_kart.data matches 52 run summon sniffer ~ ~ ~ {Tags:["shopping_kart.new_kart"],Age:-1000000}

# Apply init functions to new kart
execute as @e[tag=shopping_kart.new_kart] at @s run function shopping_kart:kart/switch_model/init_functions

# Remove the temporary player tag
tag @s remove shopping_kart.owner

