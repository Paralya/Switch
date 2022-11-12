
execute if score #modulo_rand switch.data matches ..128 run function switch:math/get_random/base_2
execute if score #modulo_rand switch.data matches 129.. run function switch:math/get_random/uuid

