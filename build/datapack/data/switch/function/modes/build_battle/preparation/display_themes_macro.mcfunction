
#> switch:modes/build_battle/preparation/display_themes_macro
#
# @within	switch:modes/build_battle/preparation/display_themes with storage switch:main input
#

$data modify block 0 5 0 Items[$(Slot)].components."minecraft:lore" set value [[{"text":"$(count)","color":"aqua","italic":false},{"text":" vote$(plurial)","color":"gray"}]]

