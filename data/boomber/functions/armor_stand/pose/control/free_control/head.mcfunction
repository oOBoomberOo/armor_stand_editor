data merge entity @s {Pose: {Head: [0.0f, 90.0f, 0.0f]}}
function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.pointer, limit=1] feet
execute as @e[tag=boomber.armor_stand.vector] at @s rotated ~180 ~ run tp @s ~ ~ ~ ~ ~

#define entity #bb.ae.rx
#define entity #bb.ae.ry
execute store result score #bb.ae.rx bb.calc run data get entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[0] 1000
execute store result score #bb.ae.ry bb.calc run data get entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[1] 1000

execute if score #bb.ae.grid_control bb.variable = #bb.ae.bool.true bb.enum run function boomber:armor_stand/pose/control/free_control/calculation/step

execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get #bb.ae.ry bb.calc
execute store result entity @s Pose.Head[1] float 0.001 run scoreboard players get #bb.ae.rx bb.calc

function boomber:armor_stand/vector/clear

scoreboard players reset #bb.ae.rx bb.calc
scoreboard players reset #bb.ae.ry bb.calc