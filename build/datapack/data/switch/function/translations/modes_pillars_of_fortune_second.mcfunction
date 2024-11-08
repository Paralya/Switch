
#> switch:translations/modes_pillars_of_fortune_second
#
# @within	switch:modes/pillars_of_fortune/second
#

# French
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"red"}
execute if score #pillars_of_fortune_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Trois minutes sont passées, les joueurs vont échanger leur position toutes les minutes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 50 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 5 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 51 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 4 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 52 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 3 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 53 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 2 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 54 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 1 seconde !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange effectué !","color":"yellow"}

# English
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.9+","color":"red"}
execute if score #pillars_of_fortune_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Three minutes have passed, players will swap their positions every minute!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 50 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 5 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 51 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 4 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 52 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 3 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 53 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 2 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 54 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 1 second!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping done!","color":"yellow"}

