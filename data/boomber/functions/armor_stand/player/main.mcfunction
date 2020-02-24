execute if score @s bb.ae.state = #bb.ae.player_state.idle bb.enum run function boomber:armor_stand/player/state/idle
execute if score @s bb.ae.state = #bb.ae.player_state.waiting bb.enum run function boomber:armor_stand/player/state/waiting
execute if score @s bb.ae.state = #bb.ae.player_state.free_control bb.enum run function boomber:armor_stand/player/state/free_control
execute if score @s bb.ae.state = #bb.ae.player_state.axis_control bb.enum run function boomber:armor_stand/player/state/axis_control