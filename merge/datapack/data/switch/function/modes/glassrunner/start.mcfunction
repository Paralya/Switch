
## Item custom
#define storage switch:glassrunner

## Teams
team add switch.glassrunner.red {"text":"[Red]","color":"red"}
team modify switch.glassrunner.red color red
team modify switch.glassrunner.red friendlyFire false
team add switch.glassrunner.blue {"text":"[Blue]","color":"blue"}
team modify switch.glassrunner.blue color blue
team modify switch.glassrunner.blue friendlyFire false

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] jump_boost infinite 3 true
time set 6000

## Téléportation des joueurs dans quatres coins + give d'items
function switch:utils/choose_map_for {id:"glassrunner", maps:["glassrunner"]}
scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/glassrunner/start/team
execute as @a[tag=!detached] at @s run function switch:modes/glassrunner/death/death


execute in switch:game run gamerule showDeathMessages false
execute in switch:game run gamerule keepInventory true

function switch:translations/modes_glassrunner_start

scoreboard players set #process_end switch.data 0
scoreboard players set #glassrunner_ticks switch.data 0
scoreboard players set #glassrunner_seconds switch.data -10

scoreboard players set #glassrunner_point_to_win switch.data 32

scoreboard objectives add switch.glassrunner.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add switch.glassrunner.deathCount deathCount
scoreboard objectives add switch.glassrunner.money_maker dummy
scoreboard objectives add switch.glassrunner.apocalypse dummy
scoreboard objectives add switch.glassrunner.turtle_helmet dummy
scoreboard objectives add switch.glassrunner.elytra dummy

scoreboard objectives add switch.glassrunner.money dummy
scoreboard objectives setdisplay list switch.glassrunner.money
scoreboard players add @a[tag=!detached] switch.glassrunner.money 0

scoreboard objectives add switch.glassrunner.display dummy [{"text":"Glass","color":"red"},{"text":"Runner","color":"blue"}]
scoreboard objectives setdisplay sidebar switch.glassrunner.display
scoreboard players set §O§r switch.glassrunner.display 2
scoreboard players set §P§R§r switch.glassrunner.display 1
scoreboard players set §P§B§r switch.glassrunner.display 0

team add switch.glassrunner.objective {"text":"Objective: 32 points","color":"gray"}
team add switch.glassrunner.p_red {"text":"[P Red]","color":"red"}
team add switch.glassrunner.p_blue {"text":"[P Blue]","color":"blue"}
team join switch.glassrunner.objective §O§r
team join switch.glassrunner.p_red §P§R§r
team join switch.glassrunner.p_blue §P§B§r

scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0



execute in switch:game run summon text_display 3000 110 3000 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"gold","italic":false}, billboard:"vertical", alignment:"center"}
execute in switch:game run summon text_display 3084 131 3084 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"gold","italic":false}, billboard:"vertical", alignment:"center"}
execute in switch:game run summon text_display 2916 131 2916 {Tags:["switch.glassrunner.money_maker"], text:{"text":"3 seconds => 2 money","color":"gold","italic":false}, billboard:"vertical", alignment:"center"}

