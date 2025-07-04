
$team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"$(minutes)","color":"yellow"},{"text":"m"},{"text":"$(optional_zero)$(seconds)","color":"yellow"},{"text":"s"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"$(blue)","color":"yellow"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"$(red)","color":"yellow"}]

