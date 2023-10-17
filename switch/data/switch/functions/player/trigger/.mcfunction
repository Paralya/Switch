
function switch:player/trigger/enable

execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/
execute unless score @s switch.trigger.stats matches 0 run function switch:player/trigger/stats/
execute unless score @s switch.trigger.changelog matches 0 run function switch:player/trigger/changelog/

function switch:player/trigger/enable

