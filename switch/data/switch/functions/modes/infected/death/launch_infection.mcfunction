
function switch:modes/infected/death/infection_second
effect give @s regeneration 10 255 true
effect give @s resistance 10 255 true
effect give @s blindness 10 255 true
effect give @s slowness 10 255 true

# Infection message if player is infected by another player
execute if entity @p[tag=switch.temp] run tellraw @a ["",{"selector":"@s"},{"text":" vient de se faire infecter par ","color":"green"},{"selector":"@p[tag=switch.temp]"},{"text":" !","color":"green"}]

