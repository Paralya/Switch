
$data modify storage switch:temp new_played append from storage switch:temp played[$(played)]
$data modify storage switch:temp new_wins append from storage switch:temp wins[$(wins)]
$data modify storage switch:temp new_kills append from storage switch:temp kills[$(kills)]
$data modify storage switch:temp new_deaths append from storage switch:temp deaths[$(deaths)]
$data modify storage switch:temp new_money append from storage switch:temp money[$(money)]
$data remove storage switch:temp played[$(played)]
$data remove storage switch:temp wins[$(wins)]
$data remove storage switch:temp kills[$(kills)]
$data remove storage switch:temp deaths[$(deaths)]
$data remove storage switch:temp money[$(money)]

