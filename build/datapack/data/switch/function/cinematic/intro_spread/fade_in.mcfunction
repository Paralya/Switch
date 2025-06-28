
#> switch:cinematic/intro_spread/fade_in
#
# @within	switch:cinematic/intro_spread/display_start 20t replace
#

# Set text displays to visible with fade-in effect
execute as @e[tag=switch.intro_spread.map_name] run data merge entity @s {text_opacity:-1b,interpolation_duration:12,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f]}}
execute as @e[tag=switch.intro_spread.credits] run data merge entity @s {text_opacity:-1b,interpolation_duration:6,start_interpolation:20,transformation:{scale:[1.0f,1.0f,1.0f]}}

# Schedule playsound
schedule function switch:cinematic/intro_spread/playsound 10t

