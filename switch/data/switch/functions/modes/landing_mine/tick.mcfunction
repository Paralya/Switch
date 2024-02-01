
scoreboard players add #landing_mine_ticks switch.data 1

# No drop system
execute as @e[type=item,tag=!switch.checked] run function switch:modes/landing_mine/no_drop

# Place a mine
give @a[scores={switch.temp.cooldown=1}] tnt
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
execute as @a[tag=!detached,scores={switch.right_click=1..},nbt={Inventory:[{id:"minecraft:tnt"}]}] at @s run function switch:modes/landing_mine/place_mine

# Mine tick
execute as @e[type=marker,tag=switch.mine] at @s run function switch:modes/landing_mine/mine_tick

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=adventure]
# execute if score #remaining_players switch.data matches ..1 run function switch:modes/landing_mine/process_end
# execute if score #landing_mine_seconds switch.data matches 300.. run function switch:modes/landing_mine/process_end

