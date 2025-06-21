
#> switch:modes/infected/secrets/ancienne_egypte/button_black
#
# @within	???
#

## Black button: sacrificing the other room
# Check if both sides are lit
execute unless score #infected_secret switch.data matches 2 run return 0
scoreboard players set #success switch.data 0
execute if block 128070 112 128093 redstone_lamp[lit=true] if block 128068 112 128093 redstone_lamp[lit=true] run scoreboard players set #success switch.data 1

# If there are not enough players on each side
execute if score #success switch.data matches 0 run return 0

# Else,
execute store result score #random switch.data run random value 0..1
function switch:translations/modes_infected_secrets_ancienne_egypte_button_black
fill 128065 116 128092 128065 116 128090 air destroy
setblock 128067 114 128089 air destroy

# Go next state
function switch:modes/infected/secrets/ancienne_egypte/next_state

