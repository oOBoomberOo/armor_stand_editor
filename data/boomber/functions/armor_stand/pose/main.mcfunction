# input:
# - @e = { boomber.armor_stand.pointer }

execute if score #bb.ae.control_state bb.variable = #bb.ae.player_state.free_control bb.enum run function boomber:armor_stand/pose/control/free_control
execute if score #bb.ae.control_state bb.variable = #bb.ae.player_state.axis_control bb.enum run function boomber:armor_stand/pose/control/axis_control