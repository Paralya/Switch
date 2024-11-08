
#> switch:translations/modes_mlg_a_coudre_mlg_a_coudre
#
# @within	switch:modes/mlg_a_coudre/mlg_a_coudre
#

# French
execute if score @s switch.temp.lives matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre mais ne gagne pas d'Extra Life car il en a déjà 2 !"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre et gagne une Extra Life !"}]

# English
execute if score @s switch.temp.lives matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" has just closed a hole but doesn't win an Extra Life because he already has 2!"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" has just closed a hole and won an Extra Life!"}]

