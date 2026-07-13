
#> switch:player/translations/layout_editor_open
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/open
#

# French
tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Éditeur de layout d'inventaire :","color":"yellow"}]
tellraw @s[scores={switch.lang=0}] ["",{"text":"➤ ","color":"gold"},{"text":"Glisse chaque repère sur le slot (barre d'action ou main secondaire) où tu veux recevoir ce type d'item en début de partie."}]
tellraw @s[scores={switch.lang=0}] ["",{"text":"➤ ","color":"gold"},{"text":"Repère laissé dans l'inventaire (ou jeté) = slot par défaut."}]
tellraw @s[scores={switch.lang=0}] ["",{"text":"➤ ","color":"gold"},{"text":"Jette "},{"text":"Sauvegarder et quitter","color":"green"},{"text":" pour enregistrer, ou "},{"text":"Réinitialiser","color":"red"},{"text":" pour tout remettre par défaut."}]

# English
tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Inventory layout editor:","color":"yellow"}]
tellraw @s[scores={switch.lang=1}] ["",{"text":"➤ ","color":"gold"},{"text":"Drag each marker onto the slot (hotbar or offhand) where you want that item type at the start of a game."}]
tellraw @s[scores={switch.lang=1}] ["",{"text":"➤ ","color":"gold"},{"text":"Marker left in the inventory (or dropped out) = default slot."}]
tellraw @s[scores={switch.lang=1}] ["",{"text":"➤ ","color":"gold"},{"text":"Drop "},{"text":"Save and exit","color":"green"},{"text":" to save, or "},{"text":"Reset to defaults","color":"red"},{"text":" to start over."}]

