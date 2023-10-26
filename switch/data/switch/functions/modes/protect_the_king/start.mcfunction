
gamemode survival @a
effect give @a saturation infinite 255 true
effect give @a resistance 15 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 15 255 true
effect give @a blindness 10 255 true
effect give @a slowness 8 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:choose_map_for/protect_the_king

gamerule naturalRegeneration false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Protect The King, tenez-vous prêt !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #protect_the_king_seconds switch.data -1
scoreboard players set #protect_the_king_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives setdisplay list switch.health

# Mise en place des deux bossbars
bossbar add switch.temp.red_king "Roi Rouge"
bossbar add switch.temp.blue_king "Roi Bleu"
bossbar set switch.temp.red_king color red
bossbar set switch.temp.blue_king color blue
bossbar set switch.temp.red_king max 40
bossbar set switch.temp.blue_king max 40
bossbar set switch.temp.red_king value 40
bossbar set switch.temp.blue_king value 40
bossbar set switch.temp.red_king players @a
bossbar set switch.temp.blue_king players @a

# Choix des rôles + give d'items
team add switch.temp.red_king
team add switch.temp.blue_king
team add switch.temp.red
team add switch.temp.blue
team modify switch.temp.red_king color dark_red
team modify switch.temp.blue_king color dark_blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
scoreboard players set #next_role switch.data 0
execute as @a[sort=random] at @s run function switch:modes/protect_the_king/roles
function switch:modes/protect_the_king/better_tp
tp @a[team=switch.temp.red] @p[team=switch.temp.red_king]
tp @a[team=switch.temp.blue] @p[team=switch.temp.blue_king]
execute as @a at @s run function switch:modes/protect_the_king/give_items

