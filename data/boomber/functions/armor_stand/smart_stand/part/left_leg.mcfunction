execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose: {LeftLeg: [0.0f, 0.0f, 0.0f]}}

function boomber:armor_stand/smart_stand/part/part

execute store result entity @s Pose.LeftLeg[0] float 0.00001 run scoreboard players get #bb.ae.result.rot.y bb.calculation
execute store result entity @s Pose.LeftLeg[1] float 0.00001 run scoreboard players get #bb.ae.result.rot.x bb.calculation