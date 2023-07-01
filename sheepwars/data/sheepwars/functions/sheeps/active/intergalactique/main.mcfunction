
#> sheepwars:sheeps/active/intergalactique/main
#
# @within			sheepwars:sheeps/passive_action
# @executed			as & at the sheep
#
# @description		Summons meteors on the sheep with random offsets
#

# Add a temporary tag for markers to rotate on the sheep
tag @s add sheepwars.aim_for_meteor

# Summon the meteors (x10)
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor
execute summon marker run function sheepwars:sheeps/active/intergalactique/summon_meteor

# Remove the temporary tag
tag @s remove sheepwars.aim_for_meteor

