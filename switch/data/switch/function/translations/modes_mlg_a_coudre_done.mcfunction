
# French
execute if score #success switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"dark_gray"},{"text":" valide son saut."}]

# English
execute if score #success switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"dark_gray"},{"text":" validates a jump."}]

