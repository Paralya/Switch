
# French
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Hmmm, il semblerait qu'il faut des personnes de chaque côté !"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Excusez-moi mais, je ne peux pas mourir maintenant ! Vous allez devoir vous sacrifier pour moi..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je..., je..., je suis vraiment vraiment désolé..."}]

