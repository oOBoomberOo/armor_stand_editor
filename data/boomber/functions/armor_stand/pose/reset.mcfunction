# input:
# - @s = armor_stand
# - part

#define entity part
#define entity toggle_state
execute if score part bb.ae.var = #selector.head bb.ae.enum run function boomber:armor_stand/pose/reset/head
execute if score part bb.ae.var = #selector.body bb.ae.enum run function boomber:armor_stand/pose/reset/body
execute if score part bb.ae.var = #selector.right_arm bb.ae.enum run function boomber:armor_stand/pose/reset/right_arm
execute if score part bb.ae.var = #selector.left_arm bb.ae.enum run function boomber:armor_stand/pose/reset/left_arm
execute if score part bb.ae.var = #selector.right_leg bb.ae.enum run function boomber:armor_stand/pose/reset/right_leg
execute if score part bb.ae.var = #selector.left_leg bb.ae.enum run function boomber:armor_stand/pose/reset/left_leg
execute if score part bb.ae.var = #selector.base_plate bb.ae.enum run function boomber:armor_stand/pose/reset/base_plate