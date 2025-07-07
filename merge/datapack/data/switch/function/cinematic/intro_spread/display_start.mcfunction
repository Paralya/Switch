
# Spawn text display for map name with fade-in effect
$summon text_display ^ ^0.0 ^1.5 {brightness:{block:15,sky:15},billboard:"center",text:{"text":"$(map_name)","color":"yellow"},background:0,shadow:true,Tags:["switch.intro_spread.map_name","switch.intro_spread.display"]}

# Spawn text display for credits with fade-in effect
$summon text_display ^ ^-0.5 ^2.5 {brightness:{block:15,sky:15},billboard:"center",text:{"text":"$(credits)","color":"white"},background:0,shadow:true,Tags:["switch.intro_spread.credits","switch.intro_spread.display"]}

# Apply scale transformation
execute as @e[tag=switch.intro_spread.map_name] run data modify entity @s transformation.scale set value [100.0f,100.0f,1.0f]
execute as @e[tag=switch.intro_spread.credits] run data modify entity @s transformation.scale set value [0.0f,0.69f,1.0f]

# Apply fade-in effect by updating opacity from 0 to 255
schedule function switch:cinematic/intro_spread/fade_in 30t replace

# Schedule fade-out based on display_time
$schedule function switch:cinematic/intro_spread/fade_out $(display_time)t

