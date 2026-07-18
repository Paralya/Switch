
#> switch:engine/signals/second
#
# @within	switch:second
#

# Hold the countdown until the intro window has really elapsed in GAME ticks: the wall clock that
# drives this signal keeps counting under lag while the intro cinematic (delay 130t + travel 50t)
# only advances per tick, so without this gate a mode's negative "seconds" countdown could arm its
# end-detection while every player is still riding the cinematic in spectator (game ends on start)
execute if score #game_ticks switch.data matches ..199 run return 1

# Launch second signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_second with storage switch:main input

