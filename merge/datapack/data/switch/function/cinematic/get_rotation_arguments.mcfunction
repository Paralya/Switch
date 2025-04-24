
# Get the target rotation as float type
$data modify storage switch:temp temp set value [$(yaw), $(pitch)]
data modify storage switch:temp target_rotation set value [0.0f, 0.0f]
execute store result storage switch:temp target_rotation[0] float 0.001 run data get storage switch:temp temp[0] 1000
execute store result storage switch:temp target_rotation[1] float 0.001 run data get storage switch:temp temp[1] 1000

