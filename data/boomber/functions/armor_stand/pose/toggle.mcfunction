# input:
# - @s = armor_stand
# - part

#define entity part
#define entity toggle_state
execute if score part bb.ae.var = #selector.right_arm bb.ae.enum run function boomber:armor_stand/pose/toggle/show_arm
execute if score part bb.ae.var = #selector.left_arm bb.ae.enum run function boomber:armor_stand/pose/toggle/show_arm
execute if score part bb.ae.var = #selector.base_plate bb.ae.enum run function boomber:armor_stand/pose/toggle/base_plate
execute if score part bb.ae.var = #selector.body bb.ae.enum run function boomber:armor_stand/pose/toggle/invisible