execute store result score #bb.ae.offset.x bb.variable run data get entity @s Pos[0] 1000
execute store result score #bb.ae.offset.y bb.variable run data get entity @s Pos[1] 1000
execute store result score #bb.ae.offset.z bb.variable run data get entity @s Pos[2] 1000

execute rotated ~ 0 positioned ^ ^ ^1 run function boomber:armor_stand/unique_vector/measure
scoreboard players operation #bb.ae.x bb.variable = #bb.ae.result.x bb.variable
scoreboard players operation #bb.ae.y bb.variable = #bb.ae.result.y bb.variable
scoreboard players operation #bb.ae.z bb.variable = #bb.ae.result.z bb.variable