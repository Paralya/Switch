
#> switch:player/username_change/compare_usernames
#
# @within	switch:player/username_change/with_macro {UUID:"$(UUID)",username:"$(username)"}
#

$data modify storage switch:temp old_username set from storage switch:main UUIDs[{UUID:"$(UUID)"}].username
$data modify storage switch:temp copy set value "$(username)"

# Lowercase both usernames for case-insensitive comparison
data modify storage bs:in string.lower.str set from storage switch:temp old_username
function #bs.string:lower
data modify storage switch:temp old_username_lower set from storage bs:out string.lower

data modify storage bs:in string.lower.str set from storage switch:temp copy
function #bs.string:lower
data modify storage switch:temp copy_lower set from storage bs:out string.lower


scoreboard players set #diff switch.data 1
execute store success score #diff switch.data run data modify storage switch:temp copy_lower set from storage switch:temp old_username_lower

# If there is a difference, we have to update everything
data modify storage switch:temp input.old_username set from storage switch:temp old_username
execute if score #diff switch.data matches 1 run function switch:player/username_change/update_everything with storage switch:temp input

