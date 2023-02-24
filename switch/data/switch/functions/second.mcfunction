
# Timer
	scoreboard players set #tick switch.data 0

# Others
	execute if score #state switch.data matches 3 run function #switch:signals/second

