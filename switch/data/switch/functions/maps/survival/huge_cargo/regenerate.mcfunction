
scoreboard players add #rg_huge_cargo switch.data 1
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41000 40892 41024 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41024 40892 41049 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41049 40892 41073 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41073 40892 41097 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41097 40892 41121 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41121 40892 41146 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41146 40892 41170 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41170 40892 41194 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41194 40892 41218 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41218 40892 41243 41000
execute if score #rg_huge_cargo switch.data matches 1 run forceload add 41243 40892 41267 41000

execute if score #rg_huge_cargo switch.data matches 1 run scoreboard players set #rg_huge_cargo_y switch.data -64
execute if score #rg_huge_cargo switch.data matches 1 run scoreboard players set #rg_huge_cargo_mod switch.data 0
execute if score #rg_huge_cargo switch.data matches ..1694 summon marker run function switch:maps/survival/huge_cargo/regeneration_on_marker

execute if score #rg_huge_cargo switch.data matches 1695.. run kill @e[type=item,x=41133,y=-64,z=40946,distance=..1000]
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41000 40892 41024 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41024 40892 41049 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41049 40892 41073 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41073 40892 41097 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41097 40892 41121 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41121 40892 41146 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41146 40892 41170 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41170 40892 41194 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41194 40892 41218 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41218 40892 41243 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run forceload remove 41243 40892 41267 41000
execute if score #rg_huge_cargo switch.data matches 1695.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"huge_cargo","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_huge_cargo switch.data matches 1695.. run scoreboard players reset #rg_huge_cargo switch.data

execute if score #rg_huge_cargo switch.data matches 1.. run schedule function switch:maps/survival/huge_cargo/regenerate 1t

