
scoreboard players add #rg_baby_park switch.data 1
execute if score #rg_baby_park switch.data matches 1 run forceload add 20862 20908 20877 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20877 20908 20892 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20892 20908 20907 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20907 20908 20922 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20922 20908 20937 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20937 20908 20952 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20952 20908 20967 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20967 20908 20982 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20982 20908 20997 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 20997 20908 21012 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21012 20908 21027 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21027 20908 21042 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21042 20908 21057 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21057 20908 21072 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21072 20908 21087 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21087 20908 21102 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21102 20908 21117 21099
execute if score #rg_baby_park switch.data matches 1 run forceload add 21117 20908 21132 21099

execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_y switch.data 0
execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_mod switch.data 0
execute if score #rg_baby_park switch.data matches ..1728 summon marker run function switch:maps/survival/baby_park/regeneration_on_marker

execute if score #rg_baby_park switch.data matches 1729.. run kill @e[type=item,x=20997,y=0,z=21003,distance=..1000]
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20862 20908 20877 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20877 20908 20892 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20892 20908 20907 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20907 20908 20922 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20922 20908 20937 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20937 20908 20952 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20952 20908 20967 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20967 20908 20982 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20982 20908 20997 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 20997 20908 21012 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21012 20908 21027 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21027 20908 21042 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21042 20908 21057 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21057 20908 21072 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21072 20908 21087 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21087 20908 21102 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21102 20908 21117 21099
execute if score #rg_baby_park switch.data matches 1729.. run forceload remove 21117 20908 21132 21099
execute if score #rg_baby_park switch.data matches 1729.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"baby_park","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_baby_park switch.data matches 1729.. run scoreboard players reset #rg_baby_park switch.data

execute if score #rg_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/regenerate 1t

