
# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_dirigeables/tp_red_player
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_dirigeables/tp_blue_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.red] run function switch:maps/survival/survival_boat/tp_red_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/survival_boat/tp_blue_player

# Starter kit
clear @s
item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003}
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.chest with leather_chestplate{display:{color:16711680}}
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.legs with leather_leggings{display:{color:16711680}}
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.feet with leather_boots{display:{color:16711680}}
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.chest with leather_chestplate{display:{color:255}}
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.legs with leather_leggings{display:{color:255}}
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.feet with leather_boots{display:{color:255}}
item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],HideFlags:8}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:infinity",lvl:1s}],CanDestroy:["#realistic_explosion:all"],HideFlags:8}
item replace entity @s inventory.0 with arrow{CanDestroy:["#realistic_explosion:all"],HideFlags:8}


# Set attack speed
attribute @s generic.attack_speed base set 1024

