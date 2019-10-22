function boomber:armor_stand/smart_stand/get_orientation
function boomber:armor_stand/smart_stand/is_small

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @a if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid at @s anchored eyes positioned ^ ^ ^1.5 run function boomber:armor_stand/player/create_target_point

execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.left_arm] rotated ~ 0 anchored eyes positioned ^0.4 ^-0.33 ^ run function boomber:armor_stand/smart_stand/part/left_arm
execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.right_arm] rotated ~ 0 anchored eyes positioned ^-0.4 ^-0.33 ^ run function boomber:armor_stand/smart_stand/part/right_arm
execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.left_leg] rotated ~ 0 anchored eyes positioned ^0.15 ^-1 ^ run function boomber:armor_stand/smart_stand/part/left_leg
execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.right_leg] rotated ~ 0 anchored eyes positioned ^-0.15 ^-1 ^ run function boomber:armor_stand/smart_stand/part/right_leg
execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.body] rotated ~ 0 anchored eyes positioned ^ ^-0.2 ^ run function boomber:armor_stand/smart_stand/part/body
execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.head] rotated ~ 0 anchored eyes positioned ^ ^-0.2 ^ run function boomber:armor_stand/smart_stand/part/head
execute as @s[tag=!boomber.armor_stand.small, tag=boomber.armor_stand.edit.base_plate] rotated ~ 0 run function boomber:armor_stand/smart_stand/part/base_plate

execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.left_arm] rotated ~ 0 anchored eyes positioned ^0.2 ^0.33 ^ run function boomber:armor_stand/smart_stand/part/left_arm
execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.right_arm] rotated ~ 0 anchored eyes positioned ^-0.2 ^0.33 ^ run function boomber:armor_stand/smart_stand/part/right_arm
execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.left_leg] rotated ~ 0 anchored eyes positioned ^0.05 ^ ^ run function boomber:armor_stand/smart_stand/part/left_leg
execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.right_leg] rotated ~ 0 anchored eyes positioned ^-0.05 ^ ^ run function boomber:armor_stand/smart_stand/part/right_leg
execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.body] rotated ~ 0 anchored eyes positioned ^ ^0.35 ^ run function boomber:armor_stand/smart_stand/part/body
execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.head] rotated ~ 0 anchored eyes positioned ^ ^0.35 ^ run function boomber:armor_stand/smart_stand/part/head
execute as @s[tag=boomber.armor_stand.small, tag=boomber.armor_stand.edit.base_plate] rotated ~ 0 run function boomber:armor_stand/smart_stand/part/base_plate

kill @e[type=area_effect_cloud, tag=boomber.armor_stand.target]