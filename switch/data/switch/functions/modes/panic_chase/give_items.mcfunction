
clear @s
item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;-601039706,110903694,-1412231234,1827265348],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;829606098,637354942,-1424162122,-1636083244],Slot:"mainhand"}]}
effect give @s[team=switch.temp.hunter] blindness 15 0 true
effect give @s[team=switch.temp.hunter] darkness 15 0 true
effect give @s[team=switch.temp.hunter] glowing infinite 0 true
effect give @s[team=switch.temp.mouse] weakness infinite 255 true

xp set @s 0 levels
xp set @s 0 points

