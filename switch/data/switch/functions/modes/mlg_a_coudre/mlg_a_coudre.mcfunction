
setblock ~ ~ ~ emerald_block
execute if score @s switch.temp.lives matches 2 run tellraw @a[tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre mais ne gagne pas d'Extra Life car il en a déjà 2 !"}]
execute if score @s switch.temp.lives matches ..1 run tellraw @a[tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre et gagne une Extra Life !"}]
execute if score @s switch.temp.lives matches ..1 run scoreboard players add @s switch.temp.lives 1
scoreboard players set #success switch.data 1

# Advancement
scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21
