
function switch:player/trigger/enable

execute unless score @s switch.trigger.lang matches 0 run function switch:player/trigger/lang/main
execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/main
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/main
execute unless score @s switch.trigger.stats matches 0 run function switch:player/trigger/stats/entry
execute unless score @s switch.trigger.changelog matches 0 run function switch:player/trigger/changelog/main
execute unless score @s switch.trigger.detach matches 0 run function switch:player/trigger/detach/main
execute unless score @s switch.trigger.attach matches 0 run function switch:player/trigger/attach/main
execute unless score @s switch.trigger.shop matches 0 run function switch:shop/trigger
execute unless score @s switch.trigger.tutorial matches 0 run function switch:player/tutorial/next_dialogue
execute unless score @s switch.trigger.succes matches 0 in minecraft:overworld run function switch:player/trigger/succes/entry
execute unless score @s switch.trigger.rating matches 0 run function switch:player/trigger/rating/main
execute unless score @s switch.trigger.night_vision matches 0 run function switch:player/trigger/night_vision/main
execute unless score @s switch.trigger.music matches 0 run function switch:player/trigger/music/main
execute unless score @s switch.trigger.coupdetat matches 0 run function switch:player/trigger/coupdetat/main

function switch:player/trigger/enable

