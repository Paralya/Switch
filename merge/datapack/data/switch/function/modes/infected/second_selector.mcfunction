
# If there are no zombies left, infect a random human
execute if score #infected_seconds switch.data matches 7..9 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #infected_seconds switch.data matches 10 if entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] as @r[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] run function switch:modes/infected/death/launch_infection
execute if score #infected_seconds switch.data matches 10 unless entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] as @r[team=switch.temp.human] run function switch:modes/infected/death/launch_infection
execute if score #infected_seconds switch.data matches 10 run scoreboard players set @p[scores={switch.temp.infection=1}] switch.temp.original_zombie 1
execute if score #infected_seconds switch.data matches 25.. if entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] unless entity @a[team=switch.temp.zombie] unless entity @a[team=switch.temp.human,scores={switch.temp.infection=1..,switch.temp.dont_want_to_be_infected=0}] run tag @r[team=switch.temp.human] add switch.to_infect
execute if score #infected_seconds switch.data matches 25.. unless entity @p[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] unless entity @a[team=switch.temp.zombie] unless entity @a[team=switch.temp.human,scores={switch.temp.infection=1..}] run tag @r[team=switch.temp.human] add switch.to_infect
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run function switch:modes/infected/death/launch_infection
execute if score #infected_seconds switch.data matches 10 run scoreboard players set @p[tag=switch.to_infect] switch.temp.original_zombie 1
execute if score #infected_seconds switch.data matches 25.. run tag @a[tag=switch.to_infect] remove switch.to_infect

# Tellraws
function switch:translations/modes_infected_second_selector

