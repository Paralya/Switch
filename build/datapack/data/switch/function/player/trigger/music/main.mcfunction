
#> switch:player/trigger/music/main
#
# @within	switch:player/trigger/main
#

# If trigger equal 1, show musics
execute if score @s switch.trigger.music matches 1 run function switch:music/browser

# Action buttons
execute if score @s switch.trigger.music matches 2 run function switch:music/actions/random
execute if score @s switch.trigger.music matches 2 run function switch:music/browser
execute if score @s switch.trigger.music matches 3 run function switch:music/actions/previous
execute if score @s switch.trigger.music matches 4 run scoreboard players operation @s switch.music.progress *= #-1 switch.data
execute if score @s switch.trigger.music matches 5 run function switch:music/actions/next
execute if score @s switch.trigger.music matches 6 run function switch:music/actions/repeat_all
execute if score @s switch.trigger.music matches 7 run function switch:music/actions/repeat_only_same

# If trigger >= 100 : play song
execute if score @s switch.trigger.music matches 100.. run scoreboard players operation @s switch.music.current = @s switch.trigger.music
execute if score @s switch.trigger.music matches 100.. run scoreboard players set @s switch.music.progress 1
execute if score @s switch.trigger.music matches 100.. run function switch:music/browser

# Reset trigger
scoreboard players set @s switch.trigger.music 0

