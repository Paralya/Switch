
function switch:player/trigger/enable

execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/

function switch:player/trigger/enable
