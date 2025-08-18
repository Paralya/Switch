
# Call the regeneration function one time
function switch:maps/survival/block_party/regenerate

# If it's still not finished, continue looping until it is
execute if score #rg_block_party switch.data matches 1.. run function switch:modes/block_party/verify_regeneration

