

## Red button: sacrificing yourself
# Check if both sides are lit
execute unless score #infected_secret switch.data matches 2 run return 0
scoreboard players set #success switch.data 0
execute if block 128070 112 128093 redstone_lamp[lit=true] if block 128068 112 128093 redstone_lamp[lit=false] run scoreboard players set #success switch.data 1

# If there are not enough players on each side
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Hmmm, il semblerait qu'il faut des personnes de chaque côté !"}]
execute if score #success switch.data matches 0 run return 0

# Else,
execute store result score #random switch.data run random value 0..1
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Pardonnez-moi, je... compte sur vous pour la suite !"}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Vous êtes vraiment des personnes de confiance, c'est pourquoi je vous confie la suite. Adieu..."}]
fill 128073 116 128090 128073 116 128092 air destroy
setblock 128071 114 128089 air destroy

# Go next state
function switch:modes/infected/secrets/ancienne_egypte/next_state

