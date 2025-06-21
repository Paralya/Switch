
#> switch:translations/changelog
#
# @within	switch:player/trigger/changelog/main
#

# French
tellraw @s[scores={switch.lang=0}] [{"text":"\n[Accédez aux changelog en clickant ici]\n","color":"red","click_event":{"action":"open_url","url":"https://github.com/Paralya/Switch/releases"}}]

# English
tellraw @s[scores={switch.lang=1}] [{"text":"\n[Access the changelog by clicking here]\n","color":"red","click_event":{"action":"open_url","url":"https://github.com/Paralya/Switch/releases"}}]

