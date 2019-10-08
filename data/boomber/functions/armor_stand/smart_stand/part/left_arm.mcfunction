execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose: {LeftArm: [0.0f, 0.0f, 0.0f]}}

function boomber:armor_stand/smart_stand/part/arm

execute store result entity @s Pose.LeftArm[0] float 0.00001 run scoreboard players get #bb.ae.orientation.y bb.variable
execute store result entity @s Pose.LeftArm[1] float 0.00001 run scoreboard players get #bb.ae.orientation.x bb.variable