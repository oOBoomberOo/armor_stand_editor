scoreboard players operation @s bb.ae.state = #bb.ae.player_state.left_control bb.enum

execute if entity @e[type=armor_stand, tag=!global.ignore, tag=!global.ignore.pos, distance=..3] run function boomber:armor_stand/player/state/left_control/pass

function boomber:armor_stand/player/change_state/waiting