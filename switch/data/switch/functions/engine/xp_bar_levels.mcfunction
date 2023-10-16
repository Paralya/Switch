
# Set XP levels
data modify storage switch:main temp set value {selector:"@a", xp:0, type:" levels"}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #levels switch.data
function switch:engine/xp_bar_macro with storage switch:main temp

