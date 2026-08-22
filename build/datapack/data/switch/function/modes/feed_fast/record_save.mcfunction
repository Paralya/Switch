
#> switch:modes/feed_fast/record_save
#
# @within	switch:modes/feed_fast/process_end
#

scoreboard players set #record switch.data 0
execute store result score #record switch.data run data get storage switch:records feed_fast.points
execute unless score #max switch.data matches 1.. run return 0
execute unless score #max switch.data > #record switch.data run return 0

execute store result storage switch:records feed_fast.points int 1 run scoreboard players get #max switch.data
execute as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.temp.record
execute as @a[tag=switch.temp.record,limit=1] run function switch:modes/feed_fast/record_holder
tag @a remove switch.temp.record

execute as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
function switch:modes/feed_fast/translations/record_new with storage switch:records feed_fast

