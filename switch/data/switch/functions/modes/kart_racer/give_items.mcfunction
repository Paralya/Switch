
tag @s add switch.temp

xp set @s 0 levels
xp set @s 0 points

give @s warped_fungus_on_a_stick{CustomModelData:2013171,switch:{classic_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Classic Respawn","color":"yellow","italic":false}'}}
give @s warped_fungus_on_a_stick{CustomModelData:2013170,switch:{hard_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Hard Respawn","color":"yellow","italic":false}'}}
function shopping_kart:kart/summon

tag @s remove switch.temp

