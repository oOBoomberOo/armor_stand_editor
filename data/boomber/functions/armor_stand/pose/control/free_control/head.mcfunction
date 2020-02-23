data merge entity @s {Pose: {Head: [0.0f, 0.0f, 0.0f]}}
function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.pointer, limit=1] feet

data modify entity @s Pose.Head[0] set from entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[1]
data modify entity @s Pose.Head[1] set from entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[0]