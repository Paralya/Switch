
scoreboard players set #infected_secret switch.data 0
execute in switch:game run gamerule minecraft:block_drops true

# Add an trigger objective for listening to the radio
scoreboard objectives add switch.temp.radio_trigger trigger

