
## Black button: sacrificing the other room
# Check if both sides are lit
scoreboard players set #success switch.data 0
execute if block 128070 112 128093 redstone_lamp[lit=true] if block 128068 112 128093 redstone_lamp[lit=true] run scoreboard players set #success switch.data 1

# If there are not enough players on each side
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[tag=!detached,distance=..12] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Hmmm, il semblerait qu'il faut des personnes de chaque côté !"}]
execute if score #success switch.data matches 0 run return 0

# Else,
execute store result score #random switch.data run random value 0..1
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[tag=!detached,distance=..12] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Excusez-moi mais, je ne peux pas mourir maintenant ! Vous allez devoir vous sacrifier pour moi..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[tag=!detached,distance=..12] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je..., je..., je suis vraiment vraiment désolé..."}]
fill 128065 116 128092 128065 116 128090 air destroy
setblock 128067 114 128089 air destroy

# Go next state
function switch:modes/infected/secrets/ancienne_egypte/next_state

