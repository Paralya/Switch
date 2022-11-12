
setblock ~ ~ ~ emerald_block
execute if score @s switch.temp.lives matches 3 run tellraw @a [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre mais ne gagne pas d'Extra Life car il en a déjà 2 !"}]
execute if score @s switch.temp.lives matches ..2 run tellraw @a [{"selector":"@s","color":"green"},{"text":" vient de réussir un MLG à Coudre et gagne une Extra Life !"}]
execute if score @s switch.temp.lives matches ..2 run scoreboard players add @s switch.temp.lives 1
scoreboard players set #success switch.data 1

