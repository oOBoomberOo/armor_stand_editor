scoreboard players operation @s bb.ae.state = #bb.ae.player_state.right_control bb.enum

execute if entity @e[type=armor_stand, distance=..3] run function boomber:armor_stand/player/state/right_control/pass
execute unless entity @e[type=armor_stand, distance=..3] run function boomber:armor_stand/player/change_state/waiting