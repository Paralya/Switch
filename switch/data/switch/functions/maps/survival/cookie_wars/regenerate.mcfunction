
scoreboard players add #rg_cookie_wars switch.data 1
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48900 48900 48914 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48914 48900 48929 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48929 48900 48943 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48943 48900 48957 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48957 48900 48971 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48971 48900 48986 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 48986 48900 49000 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49000 48900 49014 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49014 48900 49029 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49029 48900 49043 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49043 48900 49057 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49057 48900 49071 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49071 48900 49086 49100
execute if score #rg_cookie_wars switch.data matches 1 run forceload add 49086 48900 49100 49100

execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_y switch.data 0
execute if score #rg_cookie_wars switch.data matches 1 run scoreboard players set #rg_cookie_wars_mod switch.data 0
execute if score #rg_cookie_wars switch.data matches ..672 summon marker run function switch:maps/survival/cookie_wars/regeneration_on_marker

execute if score #rg_cookie_wars switch.data matches 673.. run kill @e[type=item,x=49000,y=0,z=49000,distance=..1000]
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48900 48900 48914 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48914 48900 48929 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48929 48900 48943 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48943 48900 48957 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48957 48900 48971 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48971 48900 48986 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 48986 48900 49000 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49000 48900 49014 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49014 48900 49029 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49029 48900 49043 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49043 48900 49057 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49057 48900 49071 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49071 48900 49086 49100
execute if score #rg_cookie_wars switch.data matches 673.. run forceload remove 49086 48900 49100 49100
execute if score #rg_cookie_wars switch.data matches 673.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"cookie_wars","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"33","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cookie_wars switch.data matches 673.. run scoreboard players reset #rg_cookie_wars switch.data

execute if score #rg_cookie_wars switch.data matches 1.. run schedule function switch:maps/survival/cookie_wars/regenerate 1t

