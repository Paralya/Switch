
#> switch:modes/pillars_of_fortune/translations/second
#
# @within	switch:modes/pillars_of_fortune/second
#

# French
title @a[scores={switch.lang=0},tag=!detached,gamemode=spectator] actionbar [{"text":"Temps restant : ","color":"#AEBBD0"},{"score":{"name":"#mins","objective":"switch.data"},"color":"#E4ECF7"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"#E4ECF7"},{"text":"s"}]
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"#FF3347"}
execute if score #pillars_of_fortune_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Trois minutes sont passées, les joueurs vont échanger leur position toutes les minutes !","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 50 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 5 secondes !","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 51 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 4 secondes !","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 52 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 3 secondes !","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 53 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 2 secondes !","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 54 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange des positions dans 1 seconde !","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Échange effectué !","color":"#FFE60A"}

# English
title @a[scores={switch.lang=1},tag=!detached,gamemode=spectator] actionbar [{"text":"Time remaining: ","color":"#AEBBD0"},{"score":{"name":"#mins","objective":"switch.data"},"color":"#E4ECF7"},{"text":"m"},{"score":{"name":"#secs","objective":"switch.data"},"color":"#E4ECF7"},{"text":"s"}]
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.9+","color":"#FF3347"}
execute if score #pillars_of_fortune_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Three minutes have passed, players will swap their positions every minute!","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 50 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 5 seconds!","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 51 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 4 seconds!","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 52 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 3 seconds!","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 53 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 2 seconds!","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 54 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping positions in 1 second!","color":"#FFE60A"}
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Swapping done!","color":"#FFE60A"}

