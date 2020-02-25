execute if score @s bb.ae.state = #bb.ae.player_state.waiting bb.enum run function boomber:armor_stand/player/change_state/left_control
execute if score @s bb.ae.state = #bb.ae.player_state.move_joint bb.enum run function boomber:armor_stand/player/change_state/alternate_control

advancement revoke @s from boomber:armor_stand/event/root