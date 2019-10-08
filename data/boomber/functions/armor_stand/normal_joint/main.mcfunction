function boomber:armor_stand/unique_vector/measure

scoreboard players operation #bb.ae.x_part bb.calculation = #bb.ae.result.x bb.variable
scoreboard players operation #bb.ae.z_part bb.calculation = #bb.ae.result.z bb.variable

scoreboard players operation #bb.ae.cos bb.calculation = #bb.ae.x bb.variable
scoreboard players operation #bb.ae.sin bb.calculation = #bb.ae.z bb.variable

scoreboard players operation #bb.ae.x_part bb.calculation *= #bb.ae.cos bb.calculation
scoreboard players operation #bb.ae.z_part bb.calculation *= #bb.ae.sin bb.calculation

scoreboard players operation #bb.ae.direction bb.variable = #bb.ae.x_part bb.calculation
scoreboard players operation #bb.ae.direction bb.variable += #bb.ae.z_part bb.calculation

scoreboard players operation #bb.math.input bb.variable = #bb.ae.direction bb.variable
function boomber:armor_stand/math/sign
scoreboard players operation #bb.ae.direction bb.variable = #bb.math.result bb.variable

kill @s