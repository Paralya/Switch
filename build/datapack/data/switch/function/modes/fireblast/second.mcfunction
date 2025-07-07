
#> switch:modes/fireblast/second
#
# @within	switch:modes/fireblast/calls/second
#

# Classic timer
scoreboard players add #fireblast_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Give fireball stick
execute if score #fireblast_seconds switch.data matches 0 run give @a[tag=!detached,gamemode=adventure] warped_fungus_on_a_stick[item_name={"text":"Fireball Wand","color":"red"},lore=[[{"text":"[Cooldown: 2.5s]","color":"gray","italic":true}]],item_model="switch:fireball_wand"]

# Every 12 seconds, summon a power up (unless there are already 5 not taken)
scoreboard players operation #power_up switch.data = #fireblast_seconds switch.data
scoreboard players operation #power_up switch.data %= #12 switch.data
execute if score #power_up switch.data matches 10 run function switch:modes/fireblast/summon_power_up

