execute if score @s bb.ae.state = #selector.head bb.ae.enum positioned ^ ^1.7 ^ run function boomber:armor_stand/pose/control/head
execute if score @s bb.ae.state = #selector.body bb.ae.enum positioned ^ ^1.3 ^ run function boomber:armor_stand/pose/control/body
execute if score @s bb.ae.state = #selector.right_arm bb.ae.enum positioned ^-0.3 ^1.4 ^ run function boomber:armor_stand/pose/control/right_arm
execute if score @s bb.ae.state = #selector.left_arm bb.ae.enum positioned ^0.3 ^1.4 ^ run function boomber:armor_stand/pose/control/left_arm
execute if score @s bb.ae.state = #selector.right_leg bb.ae.enum positioned ^-0.2 ^0.8 ^ run function boomber:armor_stand/pose/control/right_leg
execute if score @s bb.ae.state = #selector.left_leg bb.ae.enum positioned ^0.2 ^0.8 ^ run function boomber:armor_stand/pose/control/left_leg
execute if score @s bb.ae.state = #selector.base_plate bb.ae.enum positioned ^ ^0.0 ^ run function boomber:armor_stand/pose/control/base_plate