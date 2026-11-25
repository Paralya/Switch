
#> switch:modes/glassrunner/start
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/calls/start [ positioned -3750 128 -1750 ]
#

## Item custom
#define storage switch:glassrunner

## Teams
team add switch.glassrunner.red {"text":"[Red]","color":"#FF3347"}
team modify switch.glassrunner.red color red
team modify switch.glassrunner.red prefix ["",{"text": "耽","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
team modify switch.glassrunner.red friendlyFire false
team add switch.glassrunner.blue {"text":"[Blue]","color":"#2E9BFF"}
team modify switch.glassrunner.blue color blue
team modify switch.glassrunner.blue prefix ["",{"text": "耾","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
team modify switch.glassrunner.blue friendlyFire false

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] jump_boost infinite 3 true
time set 6000

## Téléportation des joueurs dans quatres coins + give d'items
function switch:maps/choose_map_for {id:"glassrunner", maps:["glassrunner"]}
scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/glassrunner/start/team
execute as @a[tag=!detached] at @s run function switch:modes/glassrunner/death/death

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:keep_inventory true

scoreboard players set #process_end switch.data 0
scoreboard players set #glassrunner_ticks switch.data 0
scoreboard players set #glassrunner_seconds switch.data -1
scoreboard players set #remaining_time switch.data 601
scoreboard players set #glassrunner.apocalypse switch.data 0

scoreboard players set #glassrunner_point_to_win switch.data 32

scoreboard objectives add switch.glassrunner.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add switch.glassrunner.deathCount deathCount
function switch:modes/_common/recap/start/kills_deaths
scoreboard objectives add switch.glassrunner.money_maker dummy
scoreboard objectives add switch.glassrunner.apocalypse dummy
scoreboard objectives add switch.glassrunner.turtle_helmet dummy
scoreboard objectives add switch.glassrunner.elytra dummy

scoreboard objectives add switch.glassrunner.money dummy
scoreboard objectives setdisplay list switch.glassrunner.money
scoreboard players add @a[tag=!detached] switch.glassrunner.money 0

scoreboard objectives add switch.glassrunner.display dummy [{"text":"Glass","color":"#FF3347"},{"text":"Runner","color":"#2E9BFF"}]
scoreboard objectives setdisplay sidebar switch.glassrunner.display
scoreboard players set §T§r switch.glassrunner.display 3
scoreboard players set §O§r switch.glassrunner.display 2
scoreboard players set §P§R§r switch.glassrunner.display 1
scoreboard players set §P§B§r switch.glassrunner.display 0

team add switch.glassrunner.timer {"text":"[Timer]","color":"#AEBBD0"}
team add switch.glassrunner.objective {"text":"[Objective]","color":"#AEBBD0"}
team add switch.glassrunner.p_red {"text":"[P Red]","color":"#FF3347"}
team add switch.glassrunner.p_blue {"text":"[P Blue]","color":"#2E9BFF"}
team join switch.glassrunner.timer §T§r
team join switch.glassrunner.objective §O§r
team join switch.glassrunner.p_red §P§R§r
team join switch.glassrunner.p_blue §P§B§r
team modify switch.glassrunner.timer suffix [{"text": "Time: ","color":"#AEBBD0"},{"text":"10","color":"#FFA600"},{"text":"m","color":"#AEBBD0"},{"text":"00","color":"#FFA600"},{"text":"s","color":"#AEBBD0"}]
team modify switch.glassrunner.objective suffix [{"text": "Objective: ","color":"#AEBBD0"},{"text":"32 points","color":"#FFA600"}]

scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0

execute in switch:game run summon text_display -3750 110 -1750 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"#FFA600","italic":false}, billboard:"vertical", alignment:"center"}
execute in switch:game run summon text_display -3666 131 -1666 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"#FFA600","italic":false}, billboard:"vertical", alignment:"center"}
execute in switch:game run summon text_display -3834 131 -1834 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"#FFA600","italic":false}, billboard:"vertical", alignment:"center"}

