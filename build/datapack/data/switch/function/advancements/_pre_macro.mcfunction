
#> switch:advancements/_pre_macro
#
# @within	???
#

scoreboard players add @s switch.advancements 1

$data modify storage switch:main input.id set value $(id)
function switch:advancements/_macro with storage switch:main input

