#> iris:setup/storage
# 
# @context any
# @within iris:setup/load
# @writes
# 	storage iris:data
# 		is_setup: bool Whether storage has already been setup

data modify storage iris:data is_setup set value true
data modify storage iris:input TargetEntities set value true
data modify storage iris:input MaxRecursionDepth set value 256

