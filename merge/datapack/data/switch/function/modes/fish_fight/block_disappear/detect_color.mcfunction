
# Replace every concrete to a command block (to spawn a marker)
$fill ~-10 ~-10 ~-10 ~10 ~10 ~10 command_block{Command:"function switch:modes/fish_fight/block_disappear/replace_$(color)",auto:true} replace $(color)_concrete
$scoreboard players reset @s switch.temp.placed_$(color)

