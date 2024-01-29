
advancement revoke @s only switch:warden_escape/laser_beam
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"warden_escape"} run advancement grant @s only switch:visible/70

