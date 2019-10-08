function boomber:armor_stand/part/target

function boomber:armor_stand/smart_stand/get_part/reset
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/left_arm
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/right_arm
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/left_leg
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/right_leg
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/body
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/head
execute if score #bb.ae.part bb.success matches 0 run function boomber:armor_stand/part/check/base_plate

function boomber:armor_stand/part/remove_target