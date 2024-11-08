
#> switch:utils/sqrt_loop
#
# @within	switch:utils/sqrt
#			switch:utils/sqrt_loop
#

# Compute test
scoreboard players operation #test switch.data = #output switch.data
scoreboard players operation #test switch.data += #increment switch.data
scoreboard players operation #test switch.data *= #test switch.data
# Compare values
execute if score #test switch.data <= #input switch.data run scoreboard players operation #output switch.data += #increment switch.data
# Execute recursive function
scoreboard players operation #increment switch.data /= #2 switch.data
execute if score #increment switch.data matches 1.. run function switch:utils/sqrt_loop

