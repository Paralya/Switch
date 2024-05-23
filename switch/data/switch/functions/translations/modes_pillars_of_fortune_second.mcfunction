
# French
title @a[scores={switch.lang=0},tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"red"}
execute if score #pillars_of_fortune_seconds switch.data matches 120 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Deux minutes sont passées, un creeper va apparaître toutes les 30 secondes sur tous les joueurs !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 20 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Apparition d'un creeper sur tous les joueurs dans 5 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 21 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Apparition d'un creeper sur tous les joueurs dans 4 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 22 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Apparition d'un creeper sur tous les joueurs dans 3 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 23 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Apparition d'un creeper sur tous les joueurs dans 2 secondes !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 24 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Apparition d'un creeper sur tous les joueurs dans 1 seconde !","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 25 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Des creepers sont apparus sur chaque joueur !","color":"yellow"}

# English
title @a[scores={switch.lang=1},tag=!detached,gamemode=!spectator] actionbar {"text":"Careful: PVP 1.9+","color":"red"}
execute if score #pillars_of_fortune_seconds switch.data matches 120 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Two minutes have passed, a creeper will appear every 30 seconds on all players!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 20 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"A creeper will appear on all players in 5 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 21 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"A creeper will appear on all players in 4 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 22 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"A creeper will appear on all players in 3 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 23 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"A creeper will appear on all players in 2 seconds!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 24 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"A creeper will appear on all players in 1 second!","color":"yellow"}
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 25 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"Creepers appear on each player!","color":"yellow"}

