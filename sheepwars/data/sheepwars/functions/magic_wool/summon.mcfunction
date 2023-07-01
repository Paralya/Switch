
#> sheepwars:magic_wool/summon
#
# @within			Nothing (must be called)
# @executed			at the middle position of the requested area
#
# @input score		#dx sheepwars.data : The x offset
# @input score		#dy sheepwars.data : The y offset
# @input score		#dz sheepwars.data : The z offset
#
# @description		Summons a colored wool block at the given coordinates with random offsets.
#

# Summon a marker
execute summon marker run function sheepwars:magic_wool/summon_on_marker

