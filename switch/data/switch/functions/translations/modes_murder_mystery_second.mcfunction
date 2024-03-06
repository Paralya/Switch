
# French
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"Vous êtes"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=0,switch.temp.role=1}] subtitle {"text":"Innocent","color":"green"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=0,switch.temp.role=2}] subtitle {"text":"Detective","color":"aqua"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=0,switch.temp.role=3}] subtitle {"text":"Murderer","color":"red"}
execute if score #remaining_time switch.data matches 0.. if score #murder_mystery_seconds switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"aqua"},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]

# English
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=1},tag=!detached] title {"text": "You are"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=1,switch.temp.role=1}] subtitle {"text": "Innocent", "color": "green"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=1,switch.temp.role=2}] subtitle {"text": "Detective", "color": "aqua"}
execute if score #murder_mystery_seconds switch.data matches 0 run title @a[scores={switch.lang=1,switch.temp.role=3}] subtitle {"text": "Murderer", "color": "red"}
execute if score #remaining_time switch.data matches 0.. if score #murder_mystery_seconds switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text": "Time remaining: ", "color": "aqua"},{"score":{"name": "#minute", "objective": "switch.data"}, "color": "yellow"},{"text": "m"},{"score":{"name": "#second", "objective": "switch.data"}, "color": "yellow"},{"text": "s"}]

