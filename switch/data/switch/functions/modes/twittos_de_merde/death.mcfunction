
scoreboard players set @s switch.temp.passage_vote -1
function switch:utils/classic_death
scoreboard players set @s switch.alive 0
tag @s remove switch.looser

scoreboard players set @s switch.temp.id -1
function switch:translations/modes_twittos_de_merde_death

