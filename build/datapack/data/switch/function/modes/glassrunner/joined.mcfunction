
#> switch:modes/glassrunner/joined
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/calls/joined [ positioned 3000 128 3000 ]
#

clear @s
# Ici : dans tous les cas, tuer la personne qui join
function switch:modes/glassrunner/death/death
effect give @s saturation 100 1 true
effect give @s regeneration 1 255 true

