
# Compare usernames
$execute if data storage switch:main UUIDs[{UUID:"$(UUID)"}] run function switch:player/username_change/compare_usernames {UUID:"$(UUID)",username:"$(username)"}

# Add/update player to list in every case
$data modify storage switch:main UUIDs[{UUID:"$(UUID)"}].username set value "$(username)"

