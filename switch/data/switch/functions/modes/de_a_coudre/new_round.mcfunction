
scoreboard players remove #rounds switch.data 1
scoreboard players set #next switch.data 0
scoreboard players set #position switch.data 0
execute as @a[sort=random] run function switch:modes/de_a_coudre/define_order
tellraw @a [{"text":"\nDémarrage d'un nouveau round et randomization de l'ordre des sauts !\n","color":"blue"}]
execute as @a at @s run playsound entity.ender_dragon.growl ambient @s

