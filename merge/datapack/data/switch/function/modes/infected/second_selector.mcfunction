
# Secondary infection system - handles automatic zombie selection when no zombies remain
# This function manages the countdown and automatic infection process

# Play warning sound to all players during countdown (seconds 7-9)
execute if score #infected_seconds switch.data matches 7..9 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

# At 10 seconds: First infection attempt
# Priority: Infect a random human who doesn't want to avoid being infected
execute if score #infected_seconds switch.data matches 10 if entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] as @r[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] run function switch:modes/infected/death/launch_infection
# Fallback: If no willing humans, infect any random human
execute if score #infected_seconds switch.data matches 10 unless entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] as @r[team=switch.temp.human] run function switch:modes/infected/death/launch_infection
# Mark the infected player as the original zombie for this round
execute if score #infected_seconds switch.data matches 10 run scoreboard players set @p[scores={switch.temp.infection=1}] switch.temp.original_zombie 1

# At 25+ seconds: Emergency infection system when no zombies exist
# Check if there are willing humans available and no current zombies or infected players
execute if score #infected_seconds switch.data matches 25.. if entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] unless entity @a[team=switch.temp.zombie] unless entity @a[team=switch.temp.human,scores={switch.temp.infection=1..,switch.temp.dont_want_to_be_infected=0}] run tag @r[team=switch.temp.human] add switch.to_infect
# Emergency fallback: If no willing humans, tag any human for infection
execute if score #infected_seconds switch.data matches 25.. unless entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] unless entity @a[team=switch.temp.zombie] unless entity @a[team=switch.temp.human,scores={switch.temp.infection=1..}] run tag @r[team=switch.temp.human] add switch.to_infect
# Execute the infection on the tagged player
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run function switch:modes/infected/death/launch_infection
# Mark the emergency infected player as original zombie
execute if score #infected_seconds switch.data matches 25.. run scoreboard players set @p[tag=switch.to_infect] switch.temp.original_zombie 1
# Clean up the infection tag
execute if score #infected_seconds switch.data matches 25.. run tag @a[tag=switch.to_infect] remove switch.to_infect

# Display translated messages to players about the infection process
function switch:translations/modes_infected_second_selector

