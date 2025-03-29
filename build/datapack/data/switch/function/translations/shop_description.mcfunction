
#> switch:translations/shop_description
#
# @within	switch:shop/description {id:"$(id)"}
#

# French
$tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"minigames[{id:\"$(id)\"}].lore_fr","storage":"switch:main","interpret":true},"\n"]

# English
$tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"minigames[{id:\"$(id)\"}].lore_en","storage":"switch:main","interpret":true},"\n"]

