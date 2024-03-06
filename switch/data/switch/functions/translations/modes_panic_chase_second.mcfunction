
# French
execute if score #remaining_time switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

# English
execute if score #remaining_time switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text": "Time remaining: ", "color": "aqua"},{"score":{"name": "#minute", "objective": "switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

