
scoreboard players set #success switch.data 0
data modify storage switch:main suspects set from entity @s anger.suspects
execute unless data storage switch:main suspects[0] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 0 if data storage switch:main suspects[0] run function switch:modes/warden_escape/warden_sus_loop
execute if score #success switch.data matches 1 run data modify entity @s anger.suspects append from storage switch:main sus

