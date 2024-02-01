
# Classic timer
scoreboard players add #landing_mine_seconds switch.data 1
execute if score #landing_mine_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/landing_mine/give_items

