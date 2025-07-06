
# French
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=..99,switch.lang=0}] run title @s actionbar [{"text":"Accroupi → Brillance : ","color":"aqua"},{"score":{"name":"@s","objective":"switch.temp.sneak"},"color":"yellow"},{"text":"/100","color":"yellow"}]
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=100,switch.lang=0}] run title @s actionbar [{"text":"Relâche SHIFT maintenant !","color":"red"}]

# English
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=..99,switch.lang=1}] run title @s actionbar [{"text":"Sneak → Glow: ","color":"aqua"},{"score":{"name":"@s","objective":"switch.temp.sneak"},"color":"yellow"},{"text":"/100","color":"yellow"}]
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.sneak=100,switch.lang=1}] run title @s actionbar [{"text":"Release SHIFT now!","color":"red"}]

