
scoreboard players set #random switch.data 0
execute store result score #random switch.data run data get entity @s UUID[0]
scoreboard players operation #random switch.data %= #modulo_rand switch.data
kill @s

