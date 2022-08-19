
tellraw @a[tag=convention.debug] {"text":"[Loaded Switch v1.0.0]","italic":false,"color":"green"}

execute unless entity @a run schedule function switch:post_load 1t

