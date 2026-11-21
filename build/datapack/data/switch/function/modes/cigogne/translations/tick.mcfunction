
#> switch:modes/cigogne/translations/tick
#
# @within	switch:modes/cigogne/tick
#

# French
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=..99,switch.lang=0}] run title @s actionbar [{"text":"Accroupi pour briller : ","color":"#00E5FF"},{"score":{"name":"@s","objective":"switch.temp.sneak"},"color":"#FFE60A"},{"text":"/100","color":"#FFE60A"}]
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=100,switch.lang=0}] run title @s actionbar [{"text":"Relâche SHIFT maintenant !","color":"#FF3347"}]

# English
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=..99,switch.lang=1}] run title @s actionbar [{"text":"Sneak to glow: ","color":"#00E5FF"},{"score":{"name":"@s","objective":"switch.temp.sneak"},"color":"#FFE60A"},{"text":"/100","color":"#FFE60A"}]
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=100,switch.lang=1}] run title @s actionbar [{"text":"Release SHIFT now!","color":"#FF3347"}]

