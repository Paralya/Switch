
#> switch:cinematic/intro_spread/display_start
#
# @executed	positioned ~ ~1.6 ~
#
# @within	switch:cinematic/intro_spread/start with storage switch:temp intro [ positioned ~ ~1.6 ~ ]
#
# @args		map_name (unknown)
#			credits (unknown)
#			display_time (unknown)
#

# Spawn text display for map name with fade-in effect
$summon text_display ^ ^0.0 ^1.5 {brightness:{block:15,sky:15},billboard:"center",text:{"text":"$(map_name)","color":"yellow"},background:0,shadow:true,Tags:["switch.intro_spread.map_name","switch.intro_spread.display"],transformation:{translation:[0.0f,2.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[50.0f,50.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# Spawn text display for credits with fade-in effect
$summon text_display ^ ^-0.5 ^2.5 {brightness:{block:15,sky:15},billboard:"center",text:{"text":"$(credits)","color":"white"},background:0,shadow:true,Tags:["switch.intro_spread.credits","switch.intro_spread.display"],transformation:{translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.69f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# Apply fade-in effect by updating opacity from 0 to 255
schedule function switch:cinematic/intro_spread/fade_in 30t replace

# Schedule fade-out based on display_time
$schedule function switch:cinematic/intro_spread/fade_out $(display_time)t

