
# French
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ces mécanismes anciens sont fascinants... D'après les écritures, il faut activer les leviers simultanément des deux côtés pour ouvrir le passage !"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je... je refuse de mourir ici ! Pardonnez-moi, mais votre sacrifice permettra ma survie..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je... la peur me consume... Je ne peux pas... Je suis tellement désolé, mais je dois vivre, même si cela signifie vous trahir. Que les dieux me pardonnent..."}]

# English
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> These ancient mechanisms are fascinating... According to the writings, we need to activate the levers simultaneously on both sides to open the passage!"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> I... I refuse to die here! Forgive me, but your sacrifice will ensure my survival... It's the law of nature, the strong survive..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> I... fear consumes me... I can't... I'm so sorry, but I must live, even if it means betraying you. May the gods forgive me..."}]
