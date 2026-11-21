
#> switch:modes/glassrunner/ctp/update_sb
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/second with storage switch:main input
#
# @args		mins (int)
#			zero (string)
#			secs (int)
#			red (int)
#			blue (int)
#

$team modify switch.glassrunner.timer suffix [{"text": "Time: ","color":"#AEBBD0"},{"text":"$(mins)","color":"#FFA600"},{"text":"m","color":"#AEBBD0"},{"text":"$(zero)$(secs)","color":"#FFA600"},{"text":"s","color":"#AEBBD0"}]
$team modify switch.glassrunner.p_red suffix [{"text": "Red: ","color":"#FF3347"},{"text":"$(red)","color":"#8F172B"},{"text":" points"}]
$team modify switch.glassrunner.p_blue suffix [{"text": "Blue: ","color":"#2E9BFF"},{"text":"$(blue)","color":"#2A35C9"},{"text":" points"}]

