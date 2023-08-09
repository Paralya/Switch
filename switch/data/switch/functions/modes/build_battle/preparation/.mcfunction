
# Summon markers from 8 100 8, progressively add 48 to z until 8 100 248, then increment x
scoreboard players set #x switch.data 8
scoreboard players set #z switch.data 8
scoreboard players set #id switch.temp.id 0
execute as @a summon marker run function switch:modes/build_battle/preparation/summon_marker

# Give everyone effects
effect give @a levitation 5 255 true

