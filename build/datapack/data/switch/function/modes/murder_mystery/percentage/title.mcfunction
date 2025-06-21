
#> switch:modes/murder_mystery/percentage/title
#
# @within	switch:modes/murder_mystery/start
#

# Calculate percentages
scoreboard players operation #percentage_murderer switch.data = @s switch.games_not_being_murderer
scoreboard players operation #percentage_murderer switch.data *= #100 switch.data
scoreboard players operation #percentage_murderer switch.data /= #total_murderer switch.data
scoreboard players operation #percentage_detective switch.data = @s switch.games_not_being_detective
scoreboard players operation #percentage_detective switch.data *= #100 switch.data
scoreboard players operation #percentage_detective switch.data /= #total_detective switch.data

# Display
function switch:translations/modes_murder_mystery_percentage_title

