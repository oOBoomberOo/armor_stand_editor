# input:
# - @s = armor_stand
# - #bb.ae.part

#define entity #bb.ae.part
#define entity #bb.ae.toggle_state
execute if score #bb.ae.part bb.variable = #bb.ae.selector.head bb.enum run function boomber:armor_stand/pose/reset/head
execute if score #bb.ae.part bb.variable = #bb.ae.selector.body bb.enum run function boomber:armor_stand/pose/reset/body
execute if score #bb.ae.part bb.variable = #bb.ae.selector.right_arm bb.enum run function boomber:armor_stand/pose/reset/right_arm
execute if score #bb.ae.part bb.variable = #bb.ae.selector.left_arm bb.enum run function boomber:armor_stand/pose/reset/left_arm
execute if score #bb.ae.part bb.variable = #bb.ae.selector.right_leg bb.enum run function boomber:armor_stand/pose/reset/right_leg
execute if score #bb.ae.part bb.variable = #bb.ae.selector.left_leg bb.enum run function boomber:armor_stand/pose/reset/left_leg
execute if score #bb.ae.part bb.variable = #bb.ae.selector.base_plate bb.enum run function boomber:armor_stand/pose/reset/base_plate