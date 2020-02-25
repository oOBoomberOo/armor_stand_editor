function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] run function boomber:armor_stand/vector/get/location

#define entity #bb.ae.pos.x
execute store result score #bb.ae.pos.x bb.calc run data get entity @s Pos[0] 1000
#define entity #bb.ae.pos.y
execute store result score #bb.ae.pos.y bb.calc run data get entity @s Pos[1] 1000
#define entity #bb.ae.pos.z
execute store result score #bb.ae.pos.z bb.calc run data get entity @s Pos[2] 1000

scoreboard players operation #bb.ae.vec.x bb.result -= #bb.ae.pos.x bb.calc
scoreboard players operation #bb.ae.vec.y bb.result -= #bb.ae.pos.y bb.calc
scoreboard players operation #bb.ae.vec.z bb.result -= #bb.ae.pos.z bb.calc

execute if score #bb.ae.raycast bb.variable = #bb.ae.bool.false bb.enum if score #bb.ae.min_width bb.const < #bb.ae.vec.x bb.result if score #bb.ae.vec.x bb.result < #bb.ae.max_width bb.const if score #bb.ae.min_height bb.const < #bb.ae.vec.y bb.result if score #bb.ae.vec.y bb.result < #bb.ae.max_height bb.const if score #bb.ae.min_width bb.const < #bb.ae.vec.z bb.result if score #bb.ae.vec.z bb.result < #bb.ae.max_width bb.const run function boomber:armor_stand/player/method/validate_selector

function boomber:armor_stand/vector/clear
scoreboard players reset #bb.ae.pos.x bb.calc
scoreboard players reset #bb.ae.pos.y bb.calc
scoreboard players reset #bb.ae.pos.z bb.calc
scoreboard players reset #bb.ae.vec.x bb.result
scoreboard players reset #bb.ae.vec.y bb.result
scoreboard players reset #bb.ae.vec.z bb.result