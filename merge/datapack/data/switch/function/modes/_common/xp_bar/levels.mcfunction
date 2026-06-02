
# Set XP levels
data modify storage switch:main temp set value {selector:"@a[tag=!detached]", xp:0, type:" levels"}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #levels switch.data
function switch:modes/_common/xp_bar/macro with storage switch:main temp

