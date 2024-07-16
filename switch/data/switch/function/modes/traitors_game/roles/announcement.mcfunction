
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

item replace entity @a[scores={switch.temp.role=5..6}] inventory.26 with potion[custom_name='{"text":"Potion de Traître","color":"white","italic":false}',potion_contents={custom_color:7505152,custom_effects:[{id:"speed",amplifier:0b,duration:1200},{id:"strength",amplifier:0b,duration:200},{id:"instant_health",amplifier:0b,duration:20},{id:"resistance",amplifier:0b,duration:300}]}]

function switch:translations/modes_traitors_game_roles_announcement

