
# Classic timer
scoreboard players add #fireblast_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Give fireball stick
execute if score #fireblast_seconds switch.data matches 0 run give @a[tag=!detached,gamemode=adventure] warped_fungus_on_a_stick[custom_name='{"text":"Fireball Stick","color":"red"}',lore=['[{"text":"[Cooldown: 2.5s]","color":"gray","italic":true}]'],custom_model_data=4220108]

