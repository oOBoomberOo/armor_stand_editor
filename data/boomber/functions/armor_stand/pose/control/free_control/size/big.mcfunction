execute if score @s bb.ae.state = #bb.ae.selector.head bb.enum positioned ^ ^1.7 ^ run function boomber:armor_stand/pose/control/free_control/head
execute if score @s bb.ae.state = #bb.ae.selector.body bb.enum positioned ^ ^1.3 ^ run function boomber:armor_stand/pose/control/free_control/body
execute if score @s bb.ae.state = #bb.ae.selector.right_arm bb.enum positioned ^-0.3 ^1.4 ^ run function boomber:armor_stand/pose/control/free_control/right_arm
execute if score @s bb.ae.state = #bb.ae.selector.left_arm bb.enum positioned ^0.3 ^1.4 ^ run function boomber:armor_stand/pose/control/free_control/left_arm
execute if score @s bb.ae.state = #bb.ae.selector.right_leg bb.enum positioned ^-0.2 ^0.8 ^ run function boomber:armor_stand/pose/control/free_control/right_leg
execute if score @s bb.ae.state = #bb.ae.selector.left_leg bb.enum positioned ^0.2 ^0.8 ^ run function boomber:armor_stand/pose/control/free_control/left_leg
execute if score @s bb.ae.state = #bb.ae.selector.base_plate bb.enum positioned ^ ^0.0 ^ run function boomber:armor_stand/pose/control/free_control/base_plate