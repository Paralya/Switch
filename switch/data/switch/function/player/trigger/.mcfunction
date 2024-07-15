
function switch:player/trigger/enable

execute unless score @s switch.trigger.lang matches 0 run function switch:player/trigger/lang/
execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/
execute unless score @s switch.trigger.stats matches 0 run function switch:player/trigger/stats/
execute unless score @s switch.trigger.changelog matches 0 run function switch:player/trigger/changelog/
execute unless score @s switch.trigger.detach matches 0 run function switch:player/trigger/detach/
execute unless score @s switch.trigger.attach matches 0 run function switch:player/trigger/attach/
execute unless score @s switch.trigger.shop matches 0 run function switch:shop/trigger
execute unless score @s switch.trigger.tutorial matches 0 run function switch:player/tutorial/next_dialogue
execute unless score @s switch.trigger.succes matches 0 in overworld run function switch:player/trigger/succes/
execute unless score @s switch.trigger.rating matches 0 run function switch:player/trigger/rating/
execute unless score @s switch.trigger.night_vision matches 0 run function switch:player/trigger/night_vision/
execute unless score @s switch.trigger.music matches 0 run function switch:player/trigger/music/

function switch:player/trigger/enable

