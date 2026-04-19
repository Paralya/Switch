
# Display & Actions
function switch:translations/player_trigger_coupdetat_player_vote
playsound ui.button.click ambient @s

# Set to -1 to prevent spamming the message if the player clicks multiple times
scoreboard players set @s switch.trigger.coupdetat_vote -1

