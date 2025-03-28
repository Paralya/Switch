
#> switch:translations/modes_tnt_run_second
#
# @within	switch:modes/tnt_run/second
#

# French
execute if score #tnt_run_seconds switch.data matches -5 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"5","color":"red"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"4","color":"red"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"3","color":"red"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"2","color":"red"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"1","color":"red"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"GO !","color":"red"}

# English
execute if score #tnt_run_seconds switch.data matches -5 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"5","color":"red"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"4","color":"red"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"3","color":"red"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"2","color":"red"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"1","color":"red"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"GO !","color":"red"}

