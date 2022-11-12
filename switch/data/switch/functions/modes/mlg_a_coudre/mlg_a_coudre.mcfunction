
setblock ~ ~ ~ emerald_block
execute if score @s switch.temp.lives matches 2 run tellraw @a [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre mais ne gagne pas d'Extra Life car il en a déjà une !"}]
execute if score @s switch.temp.lives matches 1 run tellraw @a [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre et gagne une Extra Life !"}]
execute if score @s switch.temp.lives matches 1 run scoreboard players set @s switch.temp.lives 2
scoreboard players set #success switch.data 1

