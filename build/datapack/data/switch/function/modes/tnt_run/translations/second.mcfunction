
#> switch:modes/tnt_run/translations/second
#
# @within	switch:modes/tnt_run/second
#

# French
execute if score #tnt_run_seconds switch.data matches -5 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"5","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"4","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"3","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"2","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"1","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"GO !","color":"#FF3347"}

# English
execute if score #tnt_run_seconds switch.data matches -5 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"5","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -4 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"4","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -3 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"3","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -2 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"2","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"1","color":"#FF3347"}
execute if score #tnt_run_seconds switch.data matches 0 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"GO !","color":"#FF3347"}

