
# French
$execute if score #temp switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous avez voté pour $(digits) étoile !","color":"green"}]
$execute if score #temp switch.data matches 2.. run tellraw @s[scores={switch.lang=0}] [{"text":"Vous avez voté pour $(digits) étoiles !","color":"green"}]

