
#> switch:modes/warden_escape/warden_sus_loop
#
# @within	switch:modes/warden_escape/warden_sus
#			switch:modes/warden_escape/warden_sus_loop
#

execute store success score #success switch.data run data modify storage switch:main suspects[0].uuid set from storage switch:main sus.uuid
data remove storage switch:main suspects[0]
execute if score #success switch.data matches 1 if data storage switch:main suspects[0] run function switch:modes/warden_escape/warden_sus_loop

