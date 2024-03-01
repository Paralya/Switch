
function switch:modes/infected/death/infection_second
effect give @s regeneration 10 255 true
effect give @s resistance 10 255 true
effect give @s blindness 10 255 true
effect give @s slowness 10 255 true

# Infection message if player is infected by another player
execute unless score @s switch.temp.infection matches 2.. if entity @p[tag=switch.temp] run tellraw @a[tag=!detached] ["",{"selector":"@s"},{"text":" vient de se faire infecter par ","color":"green"},{"selector":"@p[tag=switch.temp]"},{"text":" !","color":"green"}]
execute unless score @s switch.temp.infection matches 2.. run scoreboard players add @p[tag=switch.temp] switch.temp.kills 1

