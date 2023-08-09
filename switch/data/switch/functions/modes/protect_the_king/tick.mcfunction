
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #protect_the_king_ticks switch.data 1

# Kill des items au sol après 10 secondes
kill @e[type=item,nbt={Age:200s}]

# Détection de la mort
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/protect_the_king/death

# Particules aux pieds des rois
execute at @a[gamemode=!spectator,tag=switch.king] run particle glow ~ ~ ~ 0.2 0 0.2 0 5

## Actualisation des bossbars
# Red king
execute store result score #health switch.data run data get entity @p[team=switch.temp.red_king] Health
execute store result score #total switch.data run data get entity @p[team=switch.temp.red_king] AbsorptionAmount
scoreboard players operation #total switch.data += #health switch.data
execute store result bossbar switch.temp.red_king value run scoreboard players get #total switch.data

# Blue king
execute store result score #health switch.data run data get entity @p[team=switch.temp.blue_king] Health
execute store result score #total switch.data run data get entity @p[team=switch.temp.blue_king] AbsorptionAmount
scoreboard players operation #total switch.data += #health switch.data
execute store result bossbar switch.temp.blue_king value run scoreboard players get #total switch.data

# Affichage des bossbars
bossbar set switch.temp.red_king players @a
bossbar set switch.temp.blue_king players @a

# Détection de fin de partie
execute if score #protect_the_king_seconds switch.data matches 1..900 run function switch:modes/protect_the_king/detect_end
execute if score #protect_the_king_seconds switch.data matches 901.. run function switch:modes/protect_the_king/process_end

