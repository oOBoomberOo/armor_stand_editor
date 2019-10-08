function boomber:armor_stand/unique_vector/measure

scoreboard players operation #bb.math.input.x bb.variable = #bb.ae.result.x bb.variable
scoreboard players operation #bb.math.input.y bb.variable = #bb.ae.result.y bb.variable
scoreboard players operation #bb.math.input.z bb.variable = #bb.ae.result.z bb.variable
scoreboard players operation #bb.math.input.cos bb.variable = #bb.ae.x bb.variable
scoreboard players operation #bb.math.input.sin bb.variable = #bb.ae.z bb.variable
function boomber:armor_stand/math/rotate/y

scoreboard players operation #bb.ae.result.x bb.variable = #bb.math.result.x bb.variable
scoreboard players operation #bb.ae.result.y bb.variable = #bb.math.result.y bb.variable
scoreboard players operation #bb.ae.result.z bb.variable = #bb.math.result.z bb.variable