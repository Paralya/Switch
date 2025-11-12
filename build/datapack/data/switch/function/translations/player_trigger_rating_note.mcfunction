
#> switch:translations/player_trigger_rating_note
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/note with storage switch:temp input
#
# @args		digits (unknown)
#

# French
$execute if score #temp switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous avez voté pour $(digits) étoile !","color":"green"}]
$execute if score #temp switch.data matches 2.. run tellraw @s[scores={switch.lang=0}] [{"text":"Vous avez voté pour $(digits) étoiles !","color":"green"}]

# English
$execute if score #temp switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"text":"You voted for $(digits) star!","color":"green"}]
$execute if score #temp switch.data matches 2.. run tellraw @s[scores={switch.lang=1}] [{"text":"You voted for $(digits) stars!","color":"green"}]

