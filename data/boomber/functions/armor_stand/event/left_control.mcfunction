execute if score @s bb.ae.state = #player.waiting bb.ae.enum run function boomber:armor_stand/player/change_state/left_control
execute if score @s bb.ae.state = #player.move_joint bb.ae.enum run function boomber:armor_stand/player/change_state/alternate_control

advancement revoke @s from boomber:armor_stand/event/root