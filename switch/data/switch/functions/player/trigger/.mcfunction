
function switch:player/trigger/enable

execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/
execute unless score @s switch.trigger.stats matches 0 run function switch:player/trigger/stats/

function switch:player/trigger/enable

