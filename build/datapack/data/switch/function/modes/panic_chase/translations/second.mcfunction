
#> switch:modes/panic_chase/translations/second
#
# @within	switch:modes/panic_chase/second
#

# French
execute if score #remaining_time switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"#00E5FF"},{"score":{"name":"#minute","objective":"switch.data"},"color":"#FFE60A"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"#FFE60A"},{"text":"s"}]

# English
execute if score #remaining_time switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Time remaining: ","color":"#00E5FF"},{"score":{"name":"#minute","objective":"switch.data"},"color":"#FFE60A"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"#FFE60A"},{"text":"s"}]

