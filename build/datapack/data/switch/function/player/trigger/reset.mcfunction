
#> switch:player/trigger/reset
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tutorial/start
#

function switch:player/trigger/enable
scoreboard players set @s switch.trigger.help 0
scoreboard players set @s switch.trigger.money 0
scoreboard players set @s switch.trigger.game_vote 0
scoreboard players set @s switch.trigger.stats 0
scoreboard players set @s switch.trigger.changelog 0
scoreboard players set @s switch.trigger.detach 0
scoreboard players set @s switch.trigger.attach 0
scoreboard players set @s switch.trigger.shop 0
scoreboard players set @s switch.trigger.tutorial 0
scoreboard players set @s switch.trigger.succes 0
scoreboard players set @s switch.trigger.rating 0
scoreboard players set @s switch.trigger.night_vision 0
scoreboard players set @s switch.trigger.music 0
scoreboard players set @s switch.trigger.coupdetat 0

