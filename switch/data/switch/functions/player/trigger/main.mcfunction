
function switch:player/trigger/enable

execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/main
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/main
execute unless score @s switch.trigger.game_vote matches 0 run function switch:player/trigger/game_vote/main

function switch:player/trigger/enable
