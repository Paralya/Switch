
#> switch:modes/capture_the_flag/classes/warrior/layout/find_4
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/warrior/layout/apply
#			switch:modes/capture_the_flag/classes/warrior/layout/learn
#

execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 7
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 6
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand potion[item_name={"text":"Suicide Potion","color":"#A53DE0"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}] run return 10
return 0

