
execute store result score #random switch.data run random value 0..2
execute if score #random switch.data matches 0 run time set 0
execute if score #random switch.data matches 1 run time set 6000
execute if score #random switch.data matches 2 run time set 12000

