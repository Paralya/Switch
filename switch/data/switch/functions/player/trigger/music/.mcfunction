
# If trigger equal 1, show musics
execute if score @s switch.trigger.music matches 1 run function switch:music/browser

# 2=🔀 Random song


# 2=🔀 3=⏮ 4=⏯ 5=⏭ (6=🔁 7=🔂)
execute if score @s switch.trigger.music matches 2 run function switch:music/actions/random
execute if score @s switch.trigger.music matches 3 run function switch:music/actions/previous
execute if score @s switch.trigger.music matches 4 run scoreboard players operation @s switch.music.progress *= #-1 switch.data
execute if score @s switch.trigger.music matches 5 run function switch:music/actions/next
execute if score @s switch.trigger.music matches 6 run function switch:music/actions/repeat
execute if score @s switch.trigger.music matches 7 run function switch:music/actions/repeat_only_same



scoreboard players set @s switch.trigger.music 0

