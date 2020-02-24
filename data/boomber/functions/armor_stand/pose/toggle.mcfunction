# input:
# - @s = armor_stand
# - #bb.ae.part

#define entity #bb.ae.part
#define entity #bb.ae.toggle_state
execute if score #bb.ae.part bb.variable = #bb.ae.selector.right_arm bb.enum run function boomber:armor_stand/pose/toggle/show_arm
execute if score #bb.ae.part bb.variable = #bb.ae.selector.left_arm bb.enum run function boomber:armor_stand/pose/toggle/show_arm
execute if score #bb.ae.part bb.variable = #bb.ae.selector.base_plate bb.enum run function boomber:armor_stand/pose/toggle/base_plate
execute if score #bb.ae.part bb.variable = #bb.ae.selector.body bb.enum run function boomber:armor_stand/pose/toggle/invisible