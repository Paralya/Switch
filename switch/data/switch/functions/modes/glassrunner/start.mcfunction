
##Item custom
#define storage switch:glassrunner
data modify storage switch:glassrunner ItemsNBT.snowball_bridge_red set value {id:"minecraft:snowball",Count:1b,tag:{glassrunner:{glass_bridge:1b,glass_bridge_red:1b}}}
data modify storage switch:glassrunner ItemsNBT.snowball_bridge_blue set value {id:"minecraft:snowball",Count:1b,tag:{glassrunner:{glass_bridge:1b,glass_bridge_blue:1b}}}

data modify storage switch:glassrunner ItemsNBT.bow set value {id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:5s},{id:"minecraft:punch",lvl:5s}],CanDestroy:["minecraft:glass","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:pink_stained_glass","minecraft:light_blue_stained_glass"]}}


##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team empty switch.no_pvp


team add switch.glassrunner.red
team modify switch.glassrunner.red color red
team modify switch.glassrunner.red friendlyFire false

team add switch.glassrunner.blue
team modify switch.glassrunner.blue color blue
team modify switch.glassrunner.blue friendlyFire false



kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 999999 255 true
effect give @a resistance 999999 255 true

difficulty normal
time set 6000
weather clear

##Téléportation des joueurs dans quatres coins + give d'items
scoreboard players set #count switch.data 0
execute as @a[sort=random] at @s run function switch:modes/glassrunner/start/team

spreadplayers 2925 2925 0 2 true @a[team=switch.glassrunner.red]
spreadplayers 3075 3075 0 2 true @a[team=switch.glassrunner.blue]

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

##

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Glass Runner, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #glassrunner_ticks switch.data 0
scoreboard players set #glassrunner_seconds switch.data 0

scoreboard objectives add switch.glassrunner.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add switch.glassrunner.deathCount deathCount



