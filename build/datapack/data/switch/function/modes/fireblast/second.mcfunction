
#> switch:modes/fireblast/second
#
# @within	switch:modes/fireblast/calls/second
#

# Classic timer
scoreboard players add #fireblast_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Give fireball stick
execute if score #fireblast_seconds switch.data matches 0 run give @a[tag=!detached,gamemode=adventure] warped_fungus_on_a_stick[item_name='{"text":"Fireball Wand","color":"red"}',lore=['[{"text":"[Cooldown: 2.5s]","color":"gray","italic":true}]'],item_model="switch:fireball_wand"]

