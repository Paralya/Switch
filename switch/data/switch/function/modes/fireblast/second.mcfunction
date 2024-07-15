
# Classic timer
scoreboard players add #fireblast_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Give fireball stick
execute if score #fireblast_seconds switch.data matches 0 run give @a[tag=!detached,gamemode=adventure] warped_fungus_on_a_stick{CustomModelData:4220108,display:{Name:'{"text":"Fireball Stick","color":"red"}',Lore:['[{"text":"[Cooldown: 2.5s]","color":"gray","italic":true}]']}}

