execute unless data entity @s Pose.Head run data merge entity @s {Pose: {Head: [90.0f, 0.0f, 0.0f]}}

function boomber:armor_stand/joint/spawn

execute store result score #bb.ae.orientation.x bb.calculation run data get entity @s Rotation[0] 100000
execute store result score #bb.ae.orientation.y bb.calculation run data get entity @s Rotation[1] 100000

scoreboard players operation #bb.ae.result.rot.x bb.calculation = #bb.ae.rotation.x bb.calculation
scoreboard players operation #bb.ae.result.rot.x bb.calculation -= #bb.ae.orientation.x bb.calculation

scoreboard players operation #bb.ae.result.rot.y bb.calculation = #bb.ae.rotation.y bb.calculation
scoreboard players operation #bb.ae.result.rot.y bb.calculation -= #bb.ae.orientation.y bb.calculation

execute store result entity @s Pose.Head[0] float 0.00001 run scoreboard players get #bb.ae.result.rot.y bb.calculation
execute store result entity @s Pose.Head[1] float 0.00001 run scoreboard players get #bb.ae.result.rot.x bb.calculation