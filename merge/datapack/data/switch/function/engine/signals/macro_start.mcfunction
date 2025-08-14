
# Grant the minigame starting pop-up to everyone
$advancement grant @a[scores={switch.lang=0}] only switch:pop_ups/$(id)_fr
$advancement grant @a[scores={switch.lang=1}] only switch:pop_ups/$(id)_en

# Call the start function
$execute in switch:game run function switch:modes/$(id)/calls/start

