
# > switch:utils/get_predictable_random
# 
# @input	score : #modulo_rand switch.data
# 
# @output   score : #random switch.data
# 
# Generate a random number between 0 and input (excluded)

scoreboard players operation #random switch.data = _NEXT_RANDOM switch.data
scoreboard players operation #random switch.data %= #modulo_rand switch.data
scoreboard players operation _NEXT_RANDOM switch.data *= _RANDOM_PRIME switch.data

