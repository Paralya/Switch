
#> switch:player/translations/trigger_rating_note
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/note with storage switch:temp input
#
# @args		digits (unknown)
#

# French
$execute if score #temp switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous avez voté pour $(digits) étoile !","color":"#2EFF8B"}]
$execute if score #temp switch.data matches 2.. run tellraw @s[scores={switch.lang=0}] [{"text":"Vous avez voté pour $(digits) étoiles !","color":"#2EFF8B"}]

# English
$execute if score #temp switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"text":"You voted for $(digits) star!","color":"#2EFF8B"}]
$execute if score #temp switch.data matches 2.. run tellraw @s[scores={switch.lang=1}] [{"text":"You voted for $(digits) stars!","color":"#2EFF8B"}]

