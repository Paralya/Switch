
# Revoke advancement
advancement revoke @s only switch:murder_mystery/right_click

# Depending on the cooldown, launch proper function
execute if score @s switch.temp.throw_reload matches 0 if data entity @s SelectedItem{id:"minecraft:golden_sword"} run function switch:modes/murder_mystery/throw/init
execute if score @s switch.temp.throw_reload matches 1..187 run function switch:modes/murder_mystery/throw/error

