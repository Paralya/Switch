
# French
execute if score #base_reload switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"La base de bonus vient de se recharger !","color":"yellow"}]

# English
execute if score #base_reload switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"The bonus base has just been reloaded!","color":"yellow"}]

