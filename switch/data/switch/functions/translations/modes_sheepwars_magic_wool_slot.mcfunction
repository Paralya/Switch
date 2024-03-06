
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a activé la laine magique !"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[20s de résistance pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[20s de régénération pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[5s de poison pour l'équipe adverse]\n","color":"aqua"}
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[10s de nausée pour l'équipe adverse]\n","color":"aqua"}
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[Un drop de mouton pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[10s de flèches enflammées pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 6 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[10s de flèches explosives pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[20s de slow falling pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"[10s de glowing pour l'équipe adverse]\n","color":"aqua"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":""},{"selector":"@s"},{"text":" activated the magic wool!"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[20s of resistance for his team]\n","color":"aqua"}
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[20s regeneration for his team]\n","color":"aqua"}
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[5s of poison for the opposing team]\n","color":"aqua"}
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[10s of nausea for the opposing team]\n","color":"aqua"}
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[One drop of mutton for his team]\n","color":"aqua"}
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[10s of flaming arrows for his team]\n","color":"aqua"}
execute if score #random switch.data matches 6 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[10s of explosive arrows for his team]\n","color":"aqua"}
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[20s of slow falling for his team]\n","color":"aqua"}
execute if score #random switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"[10s of glowing for the other team]\n","color":"aqua"}

