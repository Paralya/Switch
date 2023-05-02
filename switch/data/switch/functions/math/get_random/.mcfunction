
execute if score #modulo_rand switch.data matches ..32 run function switch:math/get_random/base_2
execute if score #modulo_rand switch.data matches 33.. run function switch:math/get_random/uuid

