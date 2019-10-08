scoreboard players operation #bb.math.x bb.variable = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y bb.variable = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.z bb.variable = #bb.math.input.z bb.variable

scoreboard players operation #bb.math.cos bb.variable = #bb.math.input.cos bb.variable
scoreboard players operation #bb.math.sin bb.variable = #bb.math.input.sin bb.variable

scoreboard players operation #bb.math.result.a bb.variable = #bb.math.x bb.variable
scoreboard players operation #bb.math.result.a bb.variable *= #bb.math.cos bb.variable
scoreboard players operation #bb.math.result.a bb.variable /= #1000 bb.variable
scoreboard players operation #bb.math.result.b bb.variable = #bb.math.y bb.variable
scoreboard players operation #bb.math.result.b bb.variable *= #bb.math.sin bb.variable
scoreboard players operation #bb.math.result.b bb.variable /= #1000 bb.variable

scoreboard players operation #bb.math.result.x bb.variable = #bb.math.result.a bb.variable
scoreboard players operation #bb.math.result.x bb.variable -= #bb.math.result.b bb.variable

scoreboard players operation #bb.math.result.a bb.variable = #bb.math.x bb.variable
scoreboard players operation #bb.math.result.a bb.variable *= #bb.math.sin bb.variable
scoreboard players operation #bb.math.result.a bb.variable /= #1000 bb.variable
scoreboard players operation #bb.math.result.b bb.variable = #bb.math.y bb.variable
scoreboard players operation #bb.math.result.b bb.variable *= #bb.math.cos bb.variable
scoreboard players operation #bb.math.result.b bb.variable /= #1000 bb.variable

scoreboard players operation #bb.math.result.y bb.variable = #bb.math.result.a bb.variable
scoreboard players operation #bb.math.result.y bb.variable += #bb.math.result.b bb.variable

scoreboard players operation #bb.math.result.z bb.variable = #bb.math.z bb.variable