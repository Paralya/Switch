
# Compute test
scoreboard players operation #test shopping_kart.data = #output shopping_kart.data
scoreboard players operation #test shopping_kart.data += #increment shopping_kart.data
scoreboard players operation #test shopping_kart.data *= #test shopping_kart.data
# Compare values
execute if score #test shopping_kart.data <= #input shopping_kart.data run scoreboard players operation #output shopping_kart.data += #increment shopping_kart.data
# Execute recursive function
scoreboard players operation #increment shopping_kart.data /= #2 shopping_kart.data
execute if score #increment shopping_kart.data matches 1.. run function shopping_kart:math/sqrt_loop

