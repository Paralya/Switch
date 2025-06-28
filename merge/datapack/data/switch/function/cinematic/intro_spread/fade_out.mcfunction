
# Apply fade-out effect
execute as @e[tag=switch.intro_spread.display] run data merge entity @s {text_opacity:-127b,interpolation_duration:12,start_interpolation:0,transformation:{scale:[0.69f,0.0f,1.0f]}}

# Schedule removal of text displays after fade-out completes
schedule function switch:cinematic/intro_spread/cleanup 15t

