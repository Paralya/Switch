
##Item custom
# define storage switch:glassrunner
data modify storage switch:glassrunner ItemsNBT.snowball_bridge_red set value {id:"minecraft:snowball",Count:1b,tag:{glassrunner:{glass_bridge:1b,glass_bridge_red:1b},display:{Name:'{"text":"Snowball Bridge Red","color":"red","italic":false}'}}}
data modify storage switch:glassrunner ItemsNBT.snowball_bridge_blue set value {id:"minecraft:snowball",Count:1b,tag:{glassrunner:{glass_bridge:1b,glass_bridge_blue:1b},display:{Name:'{"text":"Snowball Bridge Blue","color":"blue","italic":false}'}}}

data modify storage switch:glassrunner ItemsNBT.renforced_snowball_bridge_red set value {id:"minecraft:snowball",Count:1b,tag:{glassrunner:{glass_bridge:1b,renforced_glass_bridge_red:1b},display:{Name:'{"text":"Renforced Snowball Bridge","color":"red","italic":false}'}}}
data modify storage switch:glassrunner ItemsNBT.renforced_snowball_bridge_blue set value {id:"minecraft:snowball",Count:1b,tag:{glassrunner:{glass_bridge:1b,renforced_glass_bridge_blue:1b},display:{Name:'{"text":"Renforced Snowball Bridge","color":"blue","italic":false}'}}}

# Destroying Crossbow
data modify storage switch:glassrunner ItemsNBT.destroying_crossbow set value {id:"minecraft:crossbow",Count:1b,tag:{glassrunner:{destroying_crossbow:1b},display:{Name:'{"text":"Destroying Crossbow","color":"dark_red","italic":false}'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{glassrunner:{destroying_arrow:1b}}},{id:"minecraft:arrow",Count:1b,tag:{glassrunner:{destroying_arrow:1b}}},{id:"minecraft:arrow",Count:1b,tag:{glassrunner:{destroying_arrow:1b}}}],Enchantments:[{id:"minecraft:knockback",lvl:5s},{id:"minecraft:punch",lvl:5s},{id:"minecraft:multishot",lvl:1s}],Damage:450}}

data modify storage switch:glassrunner ItemsNBT.bow set value {id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:5s},{id:"minecraft:punch",lvl:5s}],CanDestroy:["minecraft:glass","minecraft:red_stained_glass","minecraft:blue_stained_glass","minecraft:pink_stained_glass","minecraft:light_blue_stained_glass"]}}

# warped_fungus_on_a_stick
data modify storage switch:glassrunner ItemsNBT.fireball_wand set value {id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:4220108,glassrunner:{fireball_wand:1b},display:{Name:'{"text":"Fireball Wand","color":"dark_red","italic":false}',Lore:['{"text":"Fait spawn une fireball devant vous qui détruit tout sur son passage","color":"gray","italic":false}','[{"text":"Coût : ","color":"dark_gray","italic":false},{"text":"5 pièces","color":"gold","italic":false}]']}}}

##Fonction executée lors du lancement de la parties

xp set @a 0 levels
xp set @a 0 points
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
effect give @a jump_boost 999999 3 true

difficulty normal
time set 6000
weather clear

## Téléportation des joueurs dans quatres coins + give d'items
scoreboard players set #count switch.data 0
execute as @a[sort=random] at @s run function switch:modes/glassrunner/start/team
execute as @a at @s run function switch:modes/glassrunner/death/death

advancement revoke @a only switch:glassrunner/destroying_crossbow

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

##

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Glass Runner, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #glassrunner_ticks switch.data 0
scoreboard players set #glassrunner_seconds switch.data 0

scoreboard players set #glassrunner_point_to_win switch.data 40

scoreboard objectives add switch.glassrunner.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add switch.glassrunner.deathCount deathCount

scoreboard objectives add switch.glassrunner.money dummy
scoreboard players add @a switch.glassrunner.money 0

scoreboard objectives add switch.glassrunner.display dummy [{"text":"Glass","color":"red"},{"text":"Runner","color":"blue"}]
scoreboard objectives setdisplay sidebar switch.glassrunner.display
scoreboard players set §P§R§r switch.glassrunner.display 1
scoreboard players set §P§B§r switch.glassrunner.display 0

team add switch.glassrunner.p_red
team add switch.glassrunner.p_blue
team join switch.glassrunner.p_red §P§R§r
team join switch.glassrunner.p_blue §P§B§r

scoreboard players set #glassrunner.points.red switch.data 0
scoreboard players set #glassrunner.points.blue switch.data 0


