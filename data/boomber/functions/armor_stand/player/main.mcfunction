execute if score @s bb.ae.state = #bb.ae.player_state.idle bb.enum run function boomber:armor_stand/player/state/idle
execute if score @s bb.ae.state = #bb.ae.player_state.waiting bb.enum run function boomber:armor_stand/player/state/waiting
execute if score @s bb.ae.state = #bb.ae.player_state.move_joint bb.enum run function boomber:armor_stand/player/state/move_joint