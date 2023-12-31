

# Calculate percentages
scoreboard players operation #percentage_murderer switch.data = @s switch.games_not_being_murderer
scoreboard players operation #percentage_murderer switch.data *= #100 switch.data
scoreboard players operation #percentage_murderer switch.data /= #total_murderer switch.data
scoreboard players operation #percentage_detective switch.data = @s switch.games_not_being_detective
scoreboard players operation #percentage_detective switch.data *= #100 switch.data
scoreboard players operation #percentage_detective switch.data /= #total_detective switch.data

# Display
title @s actionbar [{"text":"Murderer Chance: ","color":"red"},{"score":{"name":"#percentage_murderer","objective":"switch.data"},"color":"red"},{"text":"%","color":"red"},{"text":" - ","color":"gray"},{"text":"Detective Chance: ","color":"aqua"},{"score":{"name":"#percentage_detective","objective":"switch.data"},"color":"aqua"},{"text":"%","color":"aqua"}]

