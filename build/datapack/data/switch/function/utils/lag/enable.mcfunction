
#> switch:utils/lag/enable
#
# @within	switch:utils/lag/enable 1t
#

# Kill previous
kill @e[tag=switch.lag_maker]

# Summon new
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=3] run summon zombie 0 10 0 {Tags:["switch.lag_maker"],DeathLootTable:"none"}

# Recall
schedule function switch:utils/lag/enable 1t

