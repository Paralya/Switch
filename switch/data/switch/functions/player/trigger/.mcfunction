
function switch:player/trigger/enable

execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/
execute unless score @s switch.trigger.stats matches 0 run function switch:player/trigger/stats/
execute unless score @s switch.trigger.changelog matches 0 run function switch:player/trigger/changelog/
execute unless score @s switch.trigger.detach matches 0 run function switch:player/trigger/detach/
execute unless score @s switch.trigger.attach matches 0 run function switch:player/trigger/attach/
execute unless score @s switch.trigger.shop matches 0 run function switch:shop/trigger
execute unless score @s switch.trigger.tutorial matches 0 run function switch:player/tutorial/next_dialogue

function switch:player/trigger/enable

