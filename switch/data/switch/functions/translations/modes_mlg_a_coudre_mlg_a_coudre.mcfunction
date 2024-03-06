
# French
execute if score @s switch.temp.lives matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre mais ne gagne pas d'Extra Life car il en a déjà 2 !"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre et gagne une Extra Life !"}]

# English
execute if score @s switch.temp.lives matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":"has just passed a MLG at Coudre but doesn't win an Extra Life because he already has 2!"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":"has just completed an MLG at Coudre and won an Extra Life!"}]

