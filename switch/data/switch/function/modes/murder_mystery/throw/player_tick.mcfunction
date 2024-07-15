
# Reload
execute if score @s switch.temp.throw_reload matches 1.. run scoreboard players remove @s switch.temp.throw_reload 1

# Detect if right click
execute if score @s switch.temp.throw_reload matches 0 if score @s switch.right_click matches 1.. if data entity @s SelectedItem{id:"minecraft:golden_sword"} run function switch:modes/murder_mystery/throw/init
execute if score @s switch.temp.throw_reload matches 1..187 if score @s switch.right_click matches 1.. run function switch:modes/murder_mystery/throw/error
execute if score @s switch.temp.throw_reload matches 188 run function switch:modes/murder_mystery/throw/throw
execute if score @s switch.temp.throw_reload matches 189.. run function switch:modes/murder_mystery/throw/feedback

