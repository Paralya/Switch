
#> switch:modes/build_battle/rating_time/macro_sign
#
# @executed	as @e[type=marker,tag=switch.build_battle_save,limit=1] & at @s
#
# @within	switch:modes/build_battle/rating_time/save_build with storage switch:main input
#

$setblock ~19 ~30 ~19 cherry_sign{back_text:{color:"orange",has_glowing_text:true,messages:[{"text":""},{"text":"$(theme)"},{"text":"---------------"},{"text":"$(username)"}]},front_text:{color:"orange",has_glowing_text:true,messages:[{"text":""},{"text":"$(theme)"},{"text":"---------------"},{"text":"$(username)"}]},is_waxed:true}

