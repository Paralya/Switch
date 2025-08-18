
# Clear old items
clear @s white_concrete
clear @s red_concrete
clear @s blue_concrete
clear @s ender_pearl
clear @s shears 1

# Effects
effect give @s instant_health 4 5 true 

# replace tropical fish knockback 1 rename "Fishy Fish" 
execute unless items entity @s container.* tropical_fish run give @s tropical_fish[enchantments={"minecraft:knockback":2,"minecraft:sharpness":2},item_name={"text":"Fishy Fish","color":"aqua"}] 42
execute if score #TEAM_FISH switch.data matches 0 run give @s white_concrete 6
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.blue] blue_concrete 6 
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.red] red_concrete 6 
give @s shears 1


# Give ender pearls (but keep the slot they are in)
scoreboard players set #pearls_count switch.data 0
execute if score #pearls_count switch.data matches 0 store result score #pearls_count switch.data if items entity @s container.* ender_pearl
execute if score #pearls_count switch.data matches 0 store result score #pearls_count switch.data if items entity @s weapon.* ender_pearl
execute if score #pearls_count switch.data matches 0 run item replace entity @s hotbar.8 with ender_pearl 6
execute if score #pearls_count switch.data matches 1 run give @s ender_pearl 5
execute if score #pearls_count switch.data matches 2 run give @s ender_pearl 4
execute if score #pearls_count switch.data matches 3 run give @s ender_pearl 3
execute if score #pearls_count switch.data matches 4 run give @s ender_pearl 2
execute if score #pearls_count switch.data matches 5 run give @s ender_pearl 1

