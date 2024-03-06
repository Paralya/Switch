
# French
execute unless entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Démarrage du compteur dès qu'un joueur vote.","color":"aqua"}]
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] if score #remaining switch.data matches 2.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Fin de la période de vote dans ","color":"aqua"},{"score":{"name":"#remaining","objective":"switch.data"},"color":"yellow"},{"text":" secondes."}]
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] if score #remaining switch.data matches 1 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Fin de la période de vote dans ","color":"aqua"},{"score":{"name":"#remaining","objective":"switch.data"},"color":"yellow"},{"text":" seconde."}]

# English
execute unless entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Counter starts when a player votes.","color":"aqua"}]
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] if score #remaining switch.data matches 2.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"End of voting period in ","color":"aqua"},{"score":{"name":"#remaining","objective":"switch.data"}, "color":"yellow"},{"text:" seconds."}]
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] if score #remaining switch.data matches 1 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"End of voting period in ","color":"aqua"},{"score":{"name":"#remaining","objective":"switch.data"}, "color":"yellow"},{"text":" second."}]

