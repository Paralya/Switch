

function switch:modes/capture_the_flag/classes/_common

function switch:modes/capture_the_flag/classes/_soldier_base
item replace entity @s hotbar.4 with potion[item_name={"text":"Suicide Potion","color":"dark_purple"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}]
item replace entity @s[team=switch.temp.red] hotbar.5 with red_wool 8
item replace entity @s[team=switch.temp.blue] hotbar.5 with blue_wool 8
item replace entity @s hotbar.6 with flint_and_steel
item replace entity @s hotbar.7 with tnt 2
item replace entity @s hotbar.8 with bread 21

function switch:modes/capture_the_flag/classes/_soldier_attrs

