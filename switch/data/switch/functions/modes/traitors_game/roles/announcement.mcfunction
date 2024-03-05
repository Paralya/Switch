
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

item replace entity @a[scores={switch.temp.role=5..6}] inventory.26 with potion{display:{Name:'{"text":"Potion de Traître","color":"white","italic":false}'},custom_potion_effects:[{id:"minecraft:speed",amplifier:0b,duration:1200},{id:"minecraft:strength",amplifier:0b,duration:200},{id:"minecraft:instant_health",amplifier:0b,duration:20},{id:"minecraft:resistance",amplifier:0b,duration:300}],CustomPotionColor:7505152}


function switch:translations/modes_traitors_game_roles_announcement

