
tellraw @a[tag=convention.debug] {"text":"[Loaded Shopping Kart v1.1.0]","italic":false,"color":"green"}

execute unless entity @a run schedule function shopping_kart:post_load 1t

