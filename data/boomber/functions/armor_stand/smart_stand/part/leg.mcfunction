function boomber:armor_stand/joint/spawn

execute store result score #bb.ae.rotation.x bb.variable run data get entity @s Rotation[0] 100000
execute store result score #bb.ae.rotation.y bb.variable run data get entity @s Rotation[1] 100000

scoreboard players operation #bb.ae.orientation.x bb.variable = #bb.ae.rotation.i bb.variable
scoreboard players operation #bb.ae.orientation.x bb.variable -= #bb.ae.rotation.x bb.variable
scoreboard players operation #bb.ae.orientation.x bb.variable += #quater_circle bb.config
scoreboard players operation #bb.ae.orientation.x bb.variable %= #half_circle bb.config
scoreboard players operation #bb.ae.orientation.x bb.variable -= #quater_circle bb.config

scoreboard players operation #bb.ae.orientation.y bb.variable = #bb.ae.rotation.j bb.variable
scoreboard players operation #bb.ae.orientation.y bb.variable += #bb.ae.rotation.y bb.variable
scoreboard players operation #bb.ae.orientation.y bb.variable -= #quater_circle bb.config
scoreboard players operation #bb.ae.orientation.y bb.variable *= #bb.ae.direction bb.variable