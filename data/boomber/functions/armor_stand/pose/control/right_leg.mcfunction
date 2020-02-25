data merge entity @s {Pose: {RightLeg: [0.0f, 90.0f, 0.0f]}}
function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.pointer, limit=1] feet
execute as @e[tag=boomber.armor_stand.vector] run function boomber:armor_stand/vector/get/rotation

execute store result score #bb.ae.rx.offset bb.calc run data get entity @s Rotation[0] 10000
scoreboard players operation #bb.ae.rx bb.result -= #bb.ae.rx.offset bb.calc
scoreboard players operation #bb.ae.ry bb.result -= #bb.ae.selector.quarter_circle bb.const

execute if score #bb.ae.alt_control bb.variable = #bb.ae.bool.true bb.enum run function boomber:armor_stand/pose/control/calculation/step

execute store result entity @s Pose.RightLeg[0] float 0.0001 run scoreboard players get #bb.ae.ry bb.result
execute store result entity @s Pose.RightLeg[1] float 0.0001 run scoreboard players get #bb.ae.rx bb.result

function boomber:armor_stand/vector/clear

scoreboard players reset #bb.ae.rx bb.result
scoreboard players reset #bb.ae.ry bb.result
scoreboard players reset #bb.ae.rx.offset bb.calc