
#> switch:v2.0.0/load/confirm_load
#
# @within	switch:v2.0.0/load/valid_dependencies
#

# Confirm load
tellraw @a[tag=convention.debug] {"text":"[Loaded Switch v2.0.0]","color":"green"}
scoreboard players set #switch.loaded load.status 1
function switch:v2.0.0/load/set_items_storage

function switch:load

# Set scoreboard constants for switch.data
scoreboard players set #-1000000 switch.data -1000000
scoreboard players set #-10 switch.data -10
scoreboard players set #-1 switch.data -1
scoreboard players set #2 switch.data 2
scoreboard players set #3 switch.data 3
scoreboard players set #4 switch.data 4
scoreboard players set #5 switch.data 5
scoreboard players set #6 switch.data 6
scoreboard players set #8 switch.data 8
scoreboard players set #10 switch.data 10
scoreboard players set #12 switch.data 12
scoreboard players set #15 switch.data 15
scoreboard players set #16 switch.data 16
scoreboard players set #20 switch.data 20
scoreboard players set #28 switch.data 28
scoreboard players set #30 switch.data 30
scoreboard players set #31 switch.data 31
scoreboard players set #32 switch.data 32
scoreboard players set #36 switch.data 36
scoreboard players set #40 switch.data 40
scoreboard players set #50 switch.data 50
scoreboard players set #60 switch.data 60
scoreboard players set #64 switch.data 64
scoreboard players set #100 switch.data 100
scoreboard players set #200 switch.data 200
scoreboard players set #360 switch.data 360
scoreboard players set #1000 switch.data 1000
scoreboard players set #100000 switch.data 100000
scoreboard players set #1000000 switch.data 1000000

