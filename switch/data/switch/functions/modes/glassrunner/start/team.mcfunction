

execute if score #count switch.data matches 0 run function switch:modes/glassrunner/start/team/red
execute if score #count switch.data matches 1 run function switch:modes/glassrunner/start/team/blue
function switch:modes/glassrunner/start/team/both


scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #2 switch.data