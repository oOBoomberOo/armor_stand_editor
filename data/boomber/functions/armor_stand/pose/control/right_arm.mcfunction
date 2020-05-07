data merge entity @s {Pose: {RightArm: [0.0f, 90.0f, 0.0f]}}
function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.pointer, limit=1] feet
execute as @e[tag=boomber.armor_stand.vector] run function boomber:armor_stand/vector/get/rotation

execute store result score rx.offset bb.ae.calc run data get entity @s Rotation[0] 10000
scoreboard players operation rx bb.ae.result -= rx.offset bb.ae.calc
scoreboard players operation ry bb.ae.result -= #selector.quarter_circle bb.ae.const

execute if score alt_control bb.ae.var = #bool.true bb.ae.enum run function boomber:armor_stand/pose/control/calculation/step

execute store result entity @s Pose.RightArm[0] float 0.0001 run scoreboard players get ry bb.ae.result
execute store result entity @s Pose.RightArm[1] float 0.0001 run scoreboard players get rx bb.ae.result

function boomber:armor_stand/vector/clear

scoreboard players reset rx bb.ae.result
scoreboard players reset ry bb.ae.result
scoreboard players reset rx.offset bb.ae.calc