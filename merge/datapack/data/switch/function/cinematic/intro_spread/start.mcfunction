
#> intro_spread
#
# @executed positioned & rotated at the view coordinates (starting point for the cinematic)
#
# @input macro		selector : string - target selector for players
# @input macro		display_time : int - display duration in ticks
# @input macro		cinematic_time : int - cinematic duration in ticks
# @input macro		map_name : string - display name of the map
# @input macro		credits : string - map credits
# @input macro		with : compound - additional arguments to pass to the cinematic (optional)
#						... args to cinematic function
#						target_function : string - function that teleports @s to the target position (e.g. "switch:maps/survival/warden_forest/spread_one_player")
#
# @description		Spawn players at view coordinates, display map info with fade effects, then launch cinematic
#
# @example			/execute positioned 36.29 102.97 81.36 rotated 145.55 21.76 run function switch:cinematic/intro_spread/start {selector:"@a[tag=!detached]",display_time:130,cinematic_time:50,map_name:"Switch Lobby",credits:"Stoupy",with:{}}
#

# Get arguments
data modify storage switch:temp intro set value {target_function: "switch:none"}
$data modify storage switch:temp intro.selector set value "$(selector)"
$data modify storage switch:temp intro.display_time set value $(display_time)
$data modify storage switch:temp intro.cinematic_time set value $(cinematic_time)
$data modify storage switch:temp intro.map_name set value "$(map_name)"
$data modify storage switch:temp intro.credits set value "$(credits)"
$data modify storage switch:temp intro.with set value $(with)
execute if data storage switch:temp intro.with.target_function run data modify storage switch:temp intro.target_function set from storage switch:temp intro.with.target_function

# Spread all players on the map, then put them in a cinematic starting from the view coordinates
$execute positioned ~ ~1.6 ~ as $(selector) run function switch:cinematic/intro_spread/cinematic_start with storage switch:temp intro

# Start the display sequence with (display time - 20 ticks) for the fade-out effect
execute store result score #display_time switch.data run data get storage switch:temp intro.display_time
scoreboard players remove #display_time switch.data 20
execute store result storage switch:temp intro.display_time int 1 run scoreboard players get #display_time switch.data
execute positioned ~ ~1.6 ~ run function switch:cinematic/intro_spread/display_start with storage switch:temp intro

