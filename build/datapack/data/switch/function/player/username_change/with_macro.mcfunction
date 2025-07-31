
#> switch:player/username_change/with_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/username_change/check with storage switch:temp input
#

# Compare usernames
$execute if data storage switch:main UUIDs[{UUID:"$(UUID)"}] run function switch:player/username_change/compare_usernames {UUID:"$(UUID)",username:"$(username)"}

# Add/update player to list in every case
$data modify storage switch:main UUIDs[{UUID:"$(UUID)"}].username set value "$(username)"

