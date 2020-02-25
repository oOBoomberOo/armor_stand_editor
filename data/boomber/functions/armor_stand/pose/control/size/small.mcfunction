execute if score @s bb.ae.state = #bb.ae.selector.head bb.enum positioned ^ ^0.85 ^ run function boomber:armor_stand/pose/control/head
execute if score @s bb.ae.state = #bb.ae.selector.body bb.enum positioned ^ ^0.65 ^ run function boomber:armor_stand/pose/control/body
execute if score @s bb.ae.state = #bb.ae.selector.right_arm bb.enum positioned ^-0.15 ^0.7 ^ run function boomber:armor_stand/pose/control/right_arm
execute if score @s bb.ae.state = #bb.ae.selector.left_arm bb.enum positioned ^0.15 ^0.7 ^ run function boomber:armor_stand/pose/control/left_arm
execute if score @s bb.ae.state = #bb.ae.selector.right_leg bb.enum positioned ^-0.1 ^0.4 ^ run function boomber:armor_stand/pose/control/right_leg
execute if score @s bb.ae.state = #bb.ae.selector.left_leg bb.enum positioned ^0.1 ^0.4 ^ run function boomber:armor_stand/pose/control/left_leg
execute if score @s bb.ae.state = #bb.ae.selector.base_plate bb.enum positioned ^ ^0.0 ^ run function boomber:armor_stand/pose/control/base_plate