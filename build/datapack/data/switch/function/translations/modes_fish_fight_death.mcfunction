
#> switch:translations/modes_fish_fight_death
#
# @within	switch:modes/fish_fight/death
#

# French
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" est mort. il a survécu "},{"score":{"name":"#fish_fight_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il ne lui reste plus qu'1 vie !"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il lui reste 2 vies !"}]

# English
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" died. survived "},{"score":{"name":"#fish_fight_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" has fallen, only 1 life left!"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" has fallen, he has 2 lives left!"}]

