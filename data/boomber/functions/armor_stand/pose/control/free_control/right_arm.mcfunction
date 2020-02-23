data merge entity @s {Pose: {RightArm: [0.0f, 90.0f, 0.0f]}}
function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.pointer, limit=1] feet
execute as @e[tag=boomber.armor_stand.vector] at @s rotated ~180 ~ run tp @s ~ ~ ~ ~ ~

execute store result entity @s Pose.RightArm[0] float 1 run data get entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[1]
execute store result entity @s Pose.RightArm[1] float 1 run data get entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[0]

function boomber:armor_stand/vector/clear