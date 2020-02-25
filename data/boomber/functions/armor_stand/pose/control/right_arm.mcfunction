data merge entity @s {Pose: {RightArm: [0.0f, 90.0f, 0.0f]}}
function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.pointer, limit=1] feet
execute as @e[tag=boomber.armor_stand.vector] at @s rotated ~270 ~ run tp @s ~ ~ ~ ~ ~

#define entity #bb.ae.rx
#define entity #bb.ae.ry
execute store result score #bb.ae.rx bb.calc run data get entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[0] 10000
execute store result score #bb.ae.ry bb.calc run data get entity @e[tag=boomber.armor_stand.vector, limit=1] Rotation[1] 10000
scoreboard players operation #bb.ae.ry bb.calc -= #bb.ae.selector.quarter_circle bb.const

execute if score #bb.ae.alt_control bb.variable = #bb.ae.bool.true bb.enum run function boomber:armor_stand/pose/control/calculation/step

execute store result entity @s Pose.RightArm[0] float 0.0001 run scoreboard players get #bb.ae.ry bb.calc
execute store result entity @s Pose.RightArm[1] float 0.0001 run scoreboard players get #bb.ae.rx bb.calc

function boomber:armor_stand/vector/clear

scoreboard players reset #bb.ae.rx bb.calc
scoreboard players reset #bb.ae.ry bb.calc