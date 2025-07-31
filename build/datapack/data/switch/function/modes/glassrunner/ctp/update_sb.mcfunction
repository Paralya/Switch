
#> switch:modes/glassrunner/ctp/update_sb
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/second with storage switch:main input
#

$team modify switch.glassrunner.p_red suffix [{"text": "Red: ","color":"red"},{"text":"$(red)","color":"dark_red"},{"text":" points"}]
$team modify switch.glassrunner.p_blue suffix [{"text": "Blue: ","color":"blue"},{"text":"$(blue)","color":"dark_blue"},{"text":" points"}]

