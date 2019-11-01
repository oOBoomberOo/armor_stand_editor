execute if entity @s[tag=boomber.armor_stand.edit.left_arm] run function boomber:armor_stand/smart_stand/reset_selection/left_arm
execute if entity @s[tag=boomber.armor_stand.edit.right_arm] run function boomber:armor_stand/smart_stand/reset_selection/right_arm
execute if entity @s[tag=boomber.armor_stand.edit.left_leg] run function boomber:armor_stand/smart_stand/reset_selection/left_leg
execute if entity @s[tag=boomber.armor_stand.edit.right_leg] run function boomber:armor_stand/smart_stand/reset_selection/right_leg
execute if entity @s[tag=boomber.armor_stand.edit.body] run function boomber:armor_stand/smart_stand/reset_selection/body
execute if entity @s[tag=boomber.armor_stand.edit.head] run function boomber:armor_stand/smart_stand/reset_selection/head
execute if entity @s[tag=boomber.armor_stand.edit.base_plate] run function boomber:armor_stand/smart_stand/reset_selection/base_plate

advancement grant @p[tag=boomber.armor_stand.target_editor] only boomber:armor_stand/story/reset_part

execute as @a[tag=boomber.armor_stand.target_editor] run function boomber:armor_stand/editor_mage/selection/deselect